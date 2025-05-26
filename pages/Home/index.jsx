import { useNavigation } from "@react-navigation/native";
import { ActivityIndicator, FlatList, Image, Text, TouchableOpacity, View } from "react-native";
import { useEffect, useState } from "react";
import Header from "../../components/Header";

export default function Home() {
    const [isLoading, setLoading] = useState(true);
    const [data, setData] = useState([]); 
    const navigation = useNavigation();
    
    const getMovies = async () => {
        try {
            const response = await fetch('http://www.omdbapi.com/?s=spider%20man&apikey=1cd66749');
            const json = await response.json();
            setData(json.Search)
        } catch (error) {
            console.log(error)
            
        } finally {
            setLoading(false);
        }
    }

    useEffect(() => {
        getMovies();
    }, [])

    return(
        <View style={{flex: 1, padding: 0, backgroundColor: "#f3dddd6e"}}>
            <Header/>
            <View style={{padding:24}}>

            {isLoading ? (
                <ActivityIndicator />
            ) : (
                <FlatList
                data={data}
                keyExtractor={({ imdbID }) => imdbID}
                renderItem={({ item }) => (
                    <TouchableOpacity onPress={() => navigation.navigate("Details", { movie: item })}>
                    <View style={{ flexDirection: 'row', marginBottom: 16, alignItems: 'center' }}>
                        <Image
                        source={{ uri: item.Poster }}
                        style={{ width: 80, height: 120, marginRight: 12 }}
                        resizeMode="cover"
                        />
                        <View>
                        <Text style={{ fontSize: 16, fontWeight: 'bold' }}>{item.Title}</Text>
                        <Text>{item.Year}</Text>
                        </View>
                    </View>
                    </TouchableOpacity>
                )}
                />
            )}
            </View>
    </View>
    )
}