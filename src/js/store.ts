import { derived, writable } from "svelte/store"
import { testData } from "./testData"

export const apiData = writable(testData)

export const drinkNames = derived(apiData, ($apiData) => {
    if ($apiData){
      return $apiData
    }
    return [];
  })