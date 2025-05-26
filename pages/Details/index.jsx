import { useNavigation } from "@react-navigation/native";
import { Button, Image, SafeAreaView, Text, View } from "react-native";

export default function Details({ route }) {
    const { Title, Year, imdbID, Type, Poster } = route.params.movie;
    const navigation = useNavigation();

    return (
        <View style={{ flex: 1, alignItems: 'center', padding: 24, backgroundColor: "#f3dddd6e" }}>
            <Text style={{ fontSize: 24, fontWeight: 'bold', marginBottom: 8 }}>{Title}</Text>
            <Text style={{ fontSize: 18, marginBottom: 4 }}>Ano: {Year}</Text>
            <Text style={{ fontSize: 18, marginBottom: 4 }}>Tipo: {Type}</Text>
            <Text style={{ fontSize: 14, color: 'gray', marginBottom: 12 }}>IMDb ID: {imdbID}</Text>
            <Image
                source={{ uri: Poster }}
                style={{ width: 200, height: 300, resizeMode: 'contain' }}
            />
            <SafeAreaView style={{margin:20}}>
                <Button title="Voltar" onPress={() => navigation.navigate("Home")}/>
            </SafeAreaView>
        </View>
    );
}