//
//  sm2oc.h
//  TestSM
//
//  Created by Apple on 2018/8/16.
//  Copyright © 2018年 Apple. All rights reserved.
//


# include <openssl/bn.h>
# include <openssl/ec.h>
# include <openssl/evp.h>
# include <openssl/rand.h>
# include <openssl/engine.h>
# include <openssl/sm2.h>

int sm2Sign(const unsigned char *key, int keyLen, const unsigned char *src, int srcLen, unsigned char *sign, int *signLen);
