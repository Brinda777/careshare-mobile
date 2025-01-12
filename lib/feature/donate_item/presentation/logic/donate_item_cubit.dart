import 'package:care_share_nepal/feature/donate_item/data/model/donate_item_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'donate_item_state.dart';

part 'donate_item_cubit.freezed.dart';

/// Cubit that manages the state of the donate item feature
///
/// This includes:
/// - Managing the selected tab index for food/clothes/medicine categories
/// - Handling the shopping cart functionality including adding and finding items
class DonateItemCubit extends Cubit<DonateItemState> {
  /// Creates a new instance of [DonateItemCubit] with default empty state
  DonateItemCubit() : super(const DonateItemState());

  /// Updates the selected tab index when user switches between categories
  ///
  /// [index] The index of the newly selected tab (0=Food, 1=Clothes, 2=Medicine)
  void onTabSelected(int index) {
    emit(
      state.copyWith(
        selectedIndex: index,
      ),
    );
  }

  /// Adds or updates an item in the shopping cart
  ///
  /// If an item with the same ID already exists:
  /// - Returns early if the items are identical
  /// - Updates the existing item if data is different
  /// Otherwise adds the new item to the cart
  ///
  /// [item] The donate item model to add/update in cart
  void onAddToCart(DonateItemModel item) {
    // Find index of item with same ID if it exists
    final existingItemIndex =
        state.cartItems?.indexWhere((cartItem) => cartItem.id == item.id) ?? -1;

    if (existingItemIndex != -1) {
      // If item exists, check if data is identical
      if (state.cartItems![existingItemIndex] == item) {
        return; // Return only if item is completely identical
      }

      // Update existing item if data is different
      final updatedCart = List<DonateItemModel>.from(state.cartItems ?? []);
      updatedCart[existingItemIndex] = item;
      emit(state.copyWith(cartItems: updatedCart));
      return;
    }

    // Add new item if ID doesn't exist
    emit(
      state.copyWith(
        cartItems: [
          ...state.cartItems ?? [],
          item,
        ],
      ),
    );
  }

  /// Removes an item from the cart based on its ID
  ///
  /// Returns early if:
  /// - The cart is empty
  /// - No items exist in the cart
  ///
  /// [itemId] The ID of the item to remove from cart
  void onRemoveFromCart(int itemId) {
    if (state.cartItems == null || state.cartItems!.isEmpty) return;

    final updatedCart = List<DonateItemModel>.from(state.cartItems!);
    updatedCart.removeWhere((item) => item.id == itemId);
    emit(state.copyWith(cartItems: updatedCart));
  }

  /// Increases the quantity of an item in the cart by 1
  ///
  /// Returns early if:
  /// - The cart is empty
  /// - The item is not found in cart
  /// - The item quantity would exceed maximum limit (15)
  ///
  /// [itemId] The ID of the item to increase quantity
  void onIncreaseQuantity(int itemId) {
    if (state.cartItems == null || state.cartItems!.isEmpty) return;

    final updatedCart = List<DonateItemModel>.from(state.cartItems!);
    final index = updatedCart.indexWhere((item) => item.id == itemId);

    // Return if item not found
    if (index == -1) return;

    // Optional: Add maximum quantity check
    if (updatedCart[index].quantity >= 15) return; // Or any other max limit

    updatedCart[index] = updatedCart[index].copyWith(
      quantity: updatedCart[index].quantity + 1,
    );
    emit(state.copyWith(cartItems: updatedCart));
  }

  /// Decreases the quantity of an item in the cart by 1
  ///
  /// Returns early if:
  /// - The cart is empty
  /// - The item is not found in cart
  ///
  /// If quantity would become 0, removes the item from cart
  /// Otherwise decreases the quantity by 1
  ///
  /// [itemId] The ID of the item to decrease quantity
  void onDecreaseQuantity(int itemId) {
    if (state.cartItems == null || state.cartItems!.isEmpty) return;

    final updatedCart = List<DonateItemModel>.from(state.cartItems!);
    final index = updatedCart.indexWhere((item) => item.id == itemId);

    // Return if item not found
    if (index == -1) return;

    // Remove item if quantity would become 0
    if (updatedCart[index].quantity <= 1) {
      updatedCart.removeAt(index);
    } else {
      updatedCart[index] = updatedCart[index].copyWith(
        quantity: updatedCart[index].quantity - 1,
      );
    }
    emit(state.copyWith(cartItems: updatedCart));
  }

  /// Finds and returns an item from the cart by its ID
  ///
  /// Returns null if:
  /// - The provided ID is null
  /// - The cart is empty
  /// - No matching item is found
  ///
  /// [itemId] The ID of the item to find
  DonateItemModel? findItemInCart({
    int? itemId,
  }) {
    if (itemId == null || state.cartItems == null) {
      return null;
    }

    try {
      return state.cartItems!.firstWhere(
        (item) => item.id == itemId,
      );
    } catch (e) {
      return null;
    }
  }

  /// Calculates the total amount of all items in the cart
  ///
  /// Returns 0.0 if:
  /// - The cart is empty
  /// - No items have prices
  ///
  /// The total is calculated by multiplying each item's price with its quantity
  /// and summing all items
  void calculateTotalAmount() {
    if (state.cartItems == null || state.cartItems!.isEmpty) {
      emit(
        state.copyWith(
          totalAmount: 0.0,
        ),
      );
      return;
    }

    final totalAmount = state.cartItems!.fold(0.0, (total, item) {
      return total + (item.price * item.quantity);
    });
    emit(
      state.copyWith(
        totalAmount: totalAmount,
      ),
    );
  }

  /// Updates the active payment method for the donation
  ///
  /// Takes a [PaymentMethod] enum value (esewa or khalti) and updates
  /// the state to reflect the newly selected payment method
  ///
  /// [paymentMethod] The payment method to switch to
  void changePaymentMethod(
    PaymentMethod paymentMethod,
  ) {
    emit(
      state.copyWith(
        activePaymentMethod: paymentMethod,
      ),
    );
  }

  /// Removes all items from the cart
  ///
  /// This will:
  /// - Clear the cartItems list
  /// - Reset the total amount to 0.0
  void clearCart() {
    emit(
      state.copyWith(
        cartItems: [],
        totalAmount: 0.0,
      ),
    );
  }
}
