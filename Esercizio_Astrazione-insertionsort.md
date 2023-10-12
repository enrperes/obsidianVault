> [!attention]- InsertionSort
> ```java
> public class InsertionSort{
> 	static int[] arr1 = {10, 34, 2, 56, 7, 67, 88, 42};
> 	static int temp;
> 
> public static void main (String a[]){
> 	for(int i = 1; i < arr1.length; i++){
> 		for (int j = i; j > 0; j--){
> 			if (arr1[j] < arr1[j-1]){
> 			temp = arr1[j]
> 			arr1[j] = arr1[j-1];
> 			arr1[j-1] = temp;
> 			}
> 		}
> 	}
> 	for(int i:arr1){
> 	System.out.print(i);
> 	System.out.print(", ");
> 	}
> }
> }
> ```

> [!done]+ Solution (con `enum`)
> ```java
> public class MyInsertionSort {
>     static int[] arr1 = {10, 34, 2, 56, 7, 67, 88, 42};
>     static int temp;
> 
>     enum SortingOrder {
>         ASCENDING, DESCENDING
>     }
> 
>     public static void main(String[] args) {
>         SortingOrder order = SortingOrder.ASCENDING; // Imposta ASCENDING per ordinamento crescente, DESCENDING per ordinamento decrescente
>         insertionSort(arr1, order);
> 
>         for (int i : arr1) {
>             System.out.print(i);
>             System.out.print(", ");
>         }
>     }
> 
>     public static void insertionSort(int[] arr, SortingOrder order) {
>         for (int i = 1; i < arr.length; i++) {
>             for (int j = i; j > 0; j--) {
>                 if ((order == SortingOrder.ASCENDING && arr[j] < arr[j - 1]) ||
>                     (order == SortingOrder.DESCENDING && arr[j] > arr[j - 1])) {
>                     temp = arr[j];
>                     arr[j] = arr[j - 1];
>                     arr[j - 1] = temp;
>                 }
>             }
>         }
>     }
> }
> ```