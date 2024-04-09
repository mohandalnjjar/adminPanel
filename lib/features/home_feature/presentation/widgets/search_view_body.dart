import 'package:admin_dash_board/core/utils/widgets/custom_text_form_filed.dart';
import 'package:admin_dash_board/features/home_feature/data/product_model.dart';
import 'package:admin_dash_board/features/home_feature/presentation/manager/product_Provider.dart';
import 'package:admin_dash_board/features/home_feature/presentation/widgets/product_item.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  TextEditingController textEditingController = TextEditingController();

  List<ProductModel> productListOnSearch = [];

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
            child: CustomTextFromField(
              onChanged: (value) {
                setState(() {
                  productListOnSearch =
                      Provider.of<ProductProvider>(context, listen: false)
                          .searchQuery(
                    searchText: textEditingController.text,
                    passedList:
                        Provider.of<ProductProvider>(context, listen: false)
                            .getProducts,
                  );
                });
              },
              controller: textEditingController,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    textEditingController.clear();
                    FocusScope.of(context).unfocus();
                  });
                },
                icon: const Icon(
                  Icons.clear,
                ),
              ),
              hint: 'Search',
              prefixIcon: const Icon(
                IconlyLight.search,
              ),
            ),
          ),
        ),
        if (textEditingController.text.isNotEmpty &&
            productListOnSearch.isEmpty) ...[
          const SliverToBoxAdapter(
            child: Center(
              child: Text(
                'there is no reulsts found',
              ),
            ),
          ),
        ],
        SliverDynamicHeightGridView(
          builder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: ProductItem(
                productModel: textEditingController.text.isNotEmpty
                    ? productListOnSearch[index]
                    : Provider.of<ProductProvider>(context, listen: false)
                        .getProducts[index],
              ),
            );
          },
          itemCount: textEditingController.text.isNotEmpty
              ? productListOnSearch.length
              : Provider.of<ProductProvider>(context, listen: false)
                  .getProducts
                  .length,
          crossAxisCount: 2,
        )
      ],
    );
  }
}
