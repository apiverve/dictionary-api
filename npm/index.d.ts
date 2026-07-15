declare module '@apiverve/dictionary' {
  export interface dictionaryOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface dictionaryResponse {
    status: string;
    error: string | null;
    data: DictionaryData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface DictionaryData {
      word:            null | string;
      definitionCount: number | null;
      definitions:     (null | string)[];
  }

  export default class dictionaryWrapper {
    constructor(options: dictionaryOptions);

    execute(callback: (error: any, data: dictionaryResponse | null) => void): Promise<dictionaryResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: dictionaryResponse | null) => void): Promise<dictionaryResponse>;
    execute(query?: Record<string, any>): Promise<dictionaryResponse>;
  }
}
