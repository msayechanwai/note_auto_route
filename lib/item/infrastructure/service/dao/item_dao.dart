import 'package:floor/floor.dart';
import 'package:note_auto_route/item/infrastructure/model/item_dto.dart';

@dao
abstract class ItemDao {
  @Query('SELECT * FROM items')
  Future<List<ItemDto>> findAll();

  @Query('SELECT * FROM items WHERE itemID = :itemID')
  Future<ItemDto?> findByItemID(String itemID);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertOne(ItemDto item);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<List<int>> insertMany(List<ItemDto> items);

  @Update(onConflict: OnConflictStrategy.replace)
  Future<void> updateItem(ItemDto item);

  @Query('DELETE FROM items WHERE itemID = :itemID')
  Future<void> deleteItem(String itemID);
}
 