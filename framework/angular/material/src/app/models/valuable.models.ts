import { DataModel } from './data.models';

export interface Valuable extends DataModel {
  value: number;
  weight: number;
}
