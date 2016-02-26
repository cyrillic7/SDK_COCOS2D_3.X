.class public Lcom/u8/sdk/QBaoSDK;
.super Ljava/lang/Object;
.source "QBaoSDK.java"


# static fields
.field public static CHAR_TABLE_10:[C

.field private static instance:Lcom/u8/sdk/QBaoSDK;


# instance fields
.field private appCode:Ljava/lang/String;

.field private paySignURL:Ljava/lang/String;

.field private payURL:Ljava/lang/String;

.field public rsa_private_key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-string v0, "0123456789"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/u8/sdk/QBaoSDK;->CHAR_TABLE_10:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBANIGJgX9O2BvCrNkgSLukODeNYCs1mweEEhkD/vwnmeYdQa4zc4Ua9F/f/sBtDcV5x7GcoA0NwF8+No/yP7nEPHNKwGdfPYxWrtU5F6UCK3tvqCb4hDRfwGp2IEn55k7kyLS1cQ+2AN1mV2h4h6MCQyILbjzBwSV56T+/hr/0X9BAgMBAAECgYBWRC5EEYLdFl831lVwqrsZkkw5oUSlvieEBI3IN0ppVObkru3h8uNidtNzn3yNj9KSAoMvg8MAOnvg8Yg2o2SCnv1tMEFEe5cZ5FBjSrcjB0M/9n8Md/lJbUDWQk79CIGo8kfcDidL2O8EOubr+dIxNGCbE7NZ/UcamhTC+9rZ0QJBAOjNYD7FtxwCE8+xzpnAXlxpvLG4gMQLjcBx0oAQxIRYTaTbmga437nJcDOFCQDXcn7P89ZFgXerSTynNcq7G5UCQQDm87c1P3EZDyWcDpIdzstYoVlAawU8FLXSCsDsR8cwE5Izfq8JMiZsO9YEqvtYmVFRT7NJo5ssJeWdUEG5cwn9AkAFLdyASQHD27/5FOmVvhPbVnbeNU6YDfG/YEjglH7qutQvYLtSfvZrObIHU2RZ4nEnpRS1paI1uVfNw6KMuhDpAkEAyPLfwv37ayFpyPpImpT3C5wAK3Oy707Z0PM4X54oqyUsPZAJvoebNOtvUUpwPevQ/F3LktQ+zNAAlLtjJHf7BQJBALQPa98nBLwShGUe9y4iO4KUuBSvos2oqn5oXhHr9lSv8LE8cFeW/SnxIvBRdOTe+Fu2GW3atyMUpxA4CUl+neg="

    iput-object v0, p0, Lcom/u8/sdk/QBaoSDK;->rsa_private_key:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static final MD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 189
    const/16 v11, 0x10

    new-array v3, v11, [C

    fill-array-data v3, :array_46

    .line 192
    .local v3, "hexDigits":[C
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 194
    .local v0, "btInput":[B
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 196
    .local v9, "mdInst":Ljava/security/MessageDigest;
    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 198
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 200
    .local v8, "md":[B
    array-length v5, v8

    .line 201
    .local v5, "j":I
    mul-int/lit8 v11, v5, 0x2

    new-array v10, v11, [C

    .line 202
    .local v10, "str":[C
    const/4 v6, 0x0

    .line 203
    .local v6, "k":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v7, v6

    .end local v6    # "k":I
    .local v7, "k":I
    :goto_20
    if-lt v4, v5, :cond_28

    .line 208
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V

    .line 211
    .end local v0    # "btInput":[B
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "k":I
    .end local v8    # "md":[B
    .end local v9    # "mdInst":Ljava/security/MessageDigest;
    .end local v10    # "str":[C
    :goto_27
    return-object v11

    .line 204
    .restart local v0    # "btInput":[B
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    .restart local v8    # "md":[B
    .restart local v9    # "mdInst":Ljava/security/MessageDigest;
    .restart local v10    # "str":[C
    :cond_28
    aget-byte v1, v8, v4

    .line 205
    .local v1, "byte0":B
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "k":I
    .restart local v6    # "k":I
    ushr-int/lit8 v11, v1, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v7

    .line 206
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "k":I
    .restart local v7    # "k":I
    and-int/lit8 v11, v1, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v6
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3c} :catch_3f

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 209
    .end local v0    # "btInput":[B
    .end local v1    # "byte0":B
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "k":I
    .end local v8    # "md":[B
    .end local v9    # "mdInst":Ljava/security/MessageDigest;
    .end local v10    # "str":[C
    :catch_3f
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    const-string v11, ""

    goto :goto_27

    .line 189
    :array_46
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method static synthetic access$0(Lcom/u8/sdk/QBaoSDK;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 271
    invoke-direct {p0, p1, p2, p3}, Lcom/u8/sdk/QBaoSDK;->encodeLoginResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeLoginResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "requesttype"    # I
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 274
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 276
    .local v1, "ext":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "accountType"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 277
    const-string v2, "userID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 278
    const-string v2, "sdkUserID"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v2, "username"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v2, "sdkUserName"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v2, "token"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v2, "extension"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_32

    .line 296
    :goto_2d
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 284
    :catch_32
    move-exception v0

    .line 285
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2d
.end method

.method public static getInstance()Lcom/u8/sdk/QBaoSDK;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/u8/sdk/QBaoSDK;->instance:Lcom/u8/sdk/QBaoSDK;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/u8/sdk/QBaoSDK;

    invoke-direct {v0}, Lcom/u8/sdk/QBaoSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/QBaoSDK;->instance:Lcom/u8/sdk/QBaoSDK;

    .line 41
    :cond_b
    sget-object v0, Lcom/u8/sdk/QBaoSDK;->instance:Lcom/u8/sdk/QBaoSDK;

    return-object v0
.end method

.method private getPayCode(I)Ljava/lang/String;
    .registers 3
    .param p1, "price"    # I

    .prologue
    .line 217
    const-string v0, ""

    .line 218
    .local v0, "paycode":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_18

    .line 252
    :goto_5
    return-object v0

    .line 222
    :sswitch_6
    const-string v0, "C0001415"

    .line 223
    goto :goto_5

    .line 227
    :sswitch_9
    const-string v0, "C0001417"

    .line 228
    goto :goto_5

    .line 232
    :sswitch_c
    const-string v0, "C0001419"

    .line 233
    goto :goto_5

    .line 237
    :sswitch_f
    const-string v0, "C0001421"

    .line 238
    goto :goto_5

    .line 242
    :sswitch_12
    const-string v0, "C0001423"

    .line 243
    goto :goto_5

    .line 247
    :sswitch_15
    const-string v0, "C0001425"

    goto :goto_5

    .line 218
    :sswitch_data_18
    .sparse-switch
        0xa -> :sswitch_6
        0x1e -> :sswitch_9
        0x32 -> :sswitch_c
        0x64 -> :sswitch_f
        0xc8 -> :sswitch_12
        0x1f4 -> :sswitch_15
    .end sparse-switch
.end method

.method private getPayInfo(Lcom/u8/sdk/PayParams;)Ljava/lang/String;
    .registers 6
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v2, "sBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v1

    .line 258
    .local v1, "pirce":I
    invoke-direct {p0, v1}, Lcom/u8/sdk/QBaoSDK;->getPayCode(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "paycode":Ljava/lang/String;
    const-string v3, "appCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v3, p0, Lcom/u8/sdk/QBaoSDK;->appCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v3, "&orderNo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const/16 v3, 0x14

    invoke-static {v3}, Lcom/u8/sdk/QBaoSDK;->getRandomNum(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v3, "&payCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v3, "&payNotifyUrl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v3, p0, Lcom/u8/sdk/QBaoSDK;->payURL:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object v3
.end method

.method public static getRandomNum(I)Ljava/lang/String;
    .registers 6
    .param p0, "length"    # I

    .prologue
    .line 301
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 302
    .local v1, "random":Ljava/util/Random;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 303
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-lt v0, p0, :cond_12

    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 304
    :cond_12
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 305
    .local v3, "seed":I
    sget-object v4, Lcom/u8/sdk/QBaoSDK;->CHAR_TABLE_10:[C

    aget-char v4, v4, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private initSDK()V
    .registers 5

    .prologue
    .line 58
    new-instance v0, Lcom/u8/sdk/QBaoSDK$1;

    invoke-direct {v0, p0}, Lcom/u8/sdk/QBaoSDK$1;-><init>(Lcom/u8/sdk/QBaoSDK;)V

    .line 79
    .local v0, "loginCallback":Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/u8/sdk/QBaoSDK;->appCode:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-static {v3}, Lcom/u8/sdk/QBaoSDK;->getRandomNum(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/qbao/sdk/api/QbaoSdk;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;)V

    .line 81
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 50
    const-string v0, "QBAO_APPCODE"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/QBaoSDK;->appCode:Ljava/lang/String;

    .line 51
    const-string v0, "QBAO_APPURL"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/QBaoSDK;->payURL:Ljava/lang/String;

    .line 52
    const-string v0, "QBAO_APPSIGNURL"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/QBaoSDK;->paySignURL:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public exit()V
    .registers 3

    .prologue
    .line 84
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/QBaoSDK$2;

    invoke-direct {v1, p0}, Lcom/u8/sdk/QBaoSDK$2;-><init>(Lcom/u8/sdk/QBaoSDK;)V

    invoke-static {v0, v1}, Lcom/qbao/sdk/api/QbaoSdk;->exit(Landroid/content/Context;Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;)V

    .line 96
    return-void
.end method

.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/u8/sdk/QBaoSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 46
    invoke-direct {p0}, Lcom/u8/sdk/QBaoSDK;->initSDK()V

    .line 47
    return-void
.end method

.method public login()V
    .registers 5

    .prologue
    .line 100
    new-instance v0, Lcom/u8/sdk/QBaoSDK$3;

    invoke-direct {v0, p0}, Lcom/u8/sdk/QBaoSDK$3;-><init>(Lcom/u8/sdk/QBaoSDK;)V

    .line 120
    .local v0, "loginCallback":Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/u8/sdk/QBaoSDK;->appCode:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-static {v3}, Lcom/u8/sdk/QBaoSDK;->getRandomNum(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/qbao/sdk/api/QbaoSdk;->initSDK(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;)V

    .line 121
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 16
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 125
    new-instance v9, Lcom/u8/sdk/QBaoSDK$4;

    invoke-direct {v9, p0}, Lcom/u8/sdk/QBaoSDK$4;-><init>(Lcom/u8/sdk/QBaoSDK;)V

    .line 144
    .local v9, "payCallback":Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;
    const-string v2, "SCAmEwggJdAgEAAoGBAKZZeR3NBCZvIb1exgfEuqjAiifRC0t"

    .line 145
    .local v2, "code":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/u8/sdk/QBaoSDK;->appCode:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/u8/sdk/QBaoSDK;->getPayCode(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/u8/sdk/QBaoSDK;->payURL:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "codestr":Ljava/lang/String;
    const-string v11, "U8SDK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "signstr = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {v3}, Lcom/u8/sdk/QBaoSDK;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "mdStr":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/u8/sdk/QBaoSDK;->getPayInfo(Lcom/u8/sdk/PayParams;)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, "info":Ljava/lang/String;
    const-string v11, "U8SDK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "orderid = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 153
    .local v8, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "orderNo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v11, "payCode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v13

    invoke-direct {p0, v13}, Lcom/u8/sdk/QBaoSDK;->getPayCode(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v11, "signCode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v11, "U8SDK"

    iget-object v12, p0, Lcom/u8/sdk/QBaoSDK;->paySignURL:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v11, p0, Lcom/u8/sdk/QBaoSDK;->paySignURL:Ljava/lang/String;

    invoke-static {v11, v8}, Lcom/u8/sdk/U8HttpUtils;->httpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "authResult":Ljava/lang/String;
    const-string v11, "U8SDK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "u8sdk"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v10, ""

    .line 165
    .local v10, "status":Ljava/lang/String;
    const-string v1, ""

    .line 166
    .local v1, "checkOutUrl":Ljava/lang/String;
    const-string v11, "{"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 167
    .local v5, "indexBegin":I
    const-string v11, "}"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 168
    .local v4, "end":I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_e6

    const/4 v11, -0x1

    if-ne v4, v11, :cond_e7

    .line 186
    :cond_e6
    :goto_e6
    return-void

    .line 171
    :cond_e7
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v0, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 172
    const-string v11, "U8SDK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "u8sdk"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v11, "U8SDK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "info1 : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "&signCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 184
    const-string v11, "U8SDK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "info : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v11

    invoke-virtual {v11}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11, v6, v9}, Lcom/qbao/sdk/api/QbaoSdk;->pay(Landroid/content/Context;Ljava/lang/String;Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;)V

    goto :goto_e6
.end method
