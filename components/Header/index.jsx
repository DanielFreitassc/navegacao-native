import { Image, View } from "react-native";

export default function Header() {
    return(
        <View>
             <Image
                source={require("../../assets/banner.webp")}
                style={{ width: "100%", height: 200 }}
                resizeMode="cover"
            />
        </View>
    )
}