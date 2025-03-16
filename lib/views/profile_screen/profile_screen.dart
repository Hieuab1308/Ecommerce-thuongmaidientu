import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/consts/lists.dart';
import 'package:emart_app/views/profile_screen/components/details_cart.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Nút chỉnh sửa profile
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.edit, color: whiteColor).onTap(() {}),
                ),
              ),

              // 5.heightBox,

              // Avatar + Thông tin cá nhân
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(4), // Thêm padding cho avatar
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: whiteColor, width: 2),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          imgProfile1,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    15.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Lê Thành Nam Nhi"
                              .text
                              .white
                              .fontFamily(semibold)
                              .size(18)
                              .make(),
                          "NamNhi@gmail.com".text.white.size(14).make(),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: whiteColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      ),
                      onPressed: () {},
                      child: logout.text.fontFamily(semibold).white.make(),
                    ),
                  ],
                ),
              ),

              20.heightBox,
              // Thông tin thống kê
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  detailsCard(count: "00", title: "Trong giỏ hàng", width: context.screenWidth /3.4),
                  detailsCard(count: "32  ", title: "Danh sách yêu thích", width: context.screenWidth /3.4),
                  detailsCard(count: "675", title: "Đơn hàng của bạn", width: context.screenWidth /3.4)
                ],
              ),

              //button section
              ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index){
                  return Divider(color: lightGrey);
                },
                itemCount: profileButtonsList.length,
                itemBuilder: (BuildContext contex, int index){
                  return ListTile(
                    leading: Image.asset(profileButtonsIcon[index], width: 22,),
                  title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                  );
              }
              ).box.white.rounded.margin(EdgeInsets.all(12)).padding(EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(redColor).make()
            ],
          ),
        ),
      ),
    );
  }
}
