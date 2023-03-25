import { derived, writable } from "svelte/store"
import { testData } from "./testData"

export const apiData = writable(testData)

export const users = derived(apiData, ($apiData) => {
    if ($apiData){
      return $apiData
    }
    return [];
  })