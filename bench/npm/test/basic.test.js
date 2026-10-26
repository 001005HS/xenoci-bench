const test = require('node:test'); const assert = require('node:assert'); const _ = require('lodash');
test('chunk', () => { assert.deepStrictEqual(_.chunk([1,2,3,4], 2), [[1,2],[3,4]]); });
test('express loads', () => { assert.strictEqual(typeof require('express'), 'function'); });
