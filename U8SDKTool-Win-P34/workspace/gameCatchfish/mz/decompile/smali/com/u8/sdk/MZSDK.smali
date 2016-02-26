.class public Lcom/u8/sdk/MZSDK;
.super Ljava/lang/Object;
.source "MZSDK.java"


# static fields
.field private static instance:Lcom/u8/sdk/MZSDK;


# instance fields
.field private AppId:Ljava/lang/String;

.field private AppKey:Ljava/lang/String;

.field private mUid:Ljava/lang/String;

.field mzGameBarPlatform:Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;

.field private nickname:Ljava/lang/String;

.field private payUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static final MD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 254
    const/16 v11, 0x10

    new-array v3, v11, [C

    fill-array-data v3, :array_46

    .line 257
    .local v3, "hexDigits":[C
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 259
    .local v0, "btInput":[B
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 261
    .local v9, "mdInst":Ljava/security/MessageDigest;
    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 263
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 265
    .local v8, "md":[B
    array-length v5, v8

    .line 266
    .local v5, "j":I
    mul-int/lit8 v11, v5, 0x2

    new-array v10, v11, [C

    .line 267
    .local v10, "str":[C
    const/4 v6, 0x0

    .line 268
    .local v6, "k":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v7, v6

    .end local v6    # "k":I
    .local v7, "k":I
    :goto_20
    if-lt v4, v5, :cond_28

    .line 273
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V

    .line 276
    .end local v0    # "btInput":[B
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "k":I
    .end local v8    # "md":[B
    .end local v9    # "mdInst":Ljava/security/MessageDigest;
    .end local v10    # "str":[C
    :goto_27
    return-object v11

    .line 269
    .restart local v0    # "btInput":[B
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v7    # "k":I
    .restart local v8    # "md":[B
    .restart local v9    # "mdInst":Ljava/security/MessageDigest;
    .restart local v10    # "str":[C
    :cond_28
    aget-byte v1, v8, v4

    .line 270
    .local v1, "byte0":B
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "k":I
    .restart local v6    # "k":I
    ushr-int/lit8 v11, v1, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v7

    .line 271
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "k":I
    .restart local v7    # "k":I
    and-int/lit8 v11, v1, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v6
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3c} :catch_3f

    .line 268
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 274
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

    .line 275
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    const-string v11, ""

    goto :goto_27

    .line 254
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

.method static synthetic access$0(Lcom/u8/sdk/MZSDK;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 34
    iput-object p1, p0, Lcom/u8/sdk/MZSDK;->mUid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/u8/sdk/MZSDK;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/u8/sdk/MZSDK;->nickname:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/u8/sdk/MZSDK;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/u8/sdk/MZSDK;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/u8/sdk/MZSDK;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/u8/sdk/MZSDK;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/u8/sdk/MZSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 280
    invoke-direct {p0, p1, p2, p3}, Lcom/u8/sdk/MZSDK;->encodeLoginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeLoginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "nickname"    # Ljava/lang/String;
    .param p2, "openId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 283
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 285
    .local v1, "ext":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "accountType"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v2, "userID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 287
    const-string v2, "sdkUserID"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v2, "username"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v2, "sdkUserName"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v2, "token"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v2, "extension"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2d} :catch_32

    .line 305
    :goto_2d
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 293
    :catch_32
    move-exception v0

    .line 294
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2d
.end method

.method public static getInstance()Lcom/u8/sdk/MZSDK;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/u8/sdk/MZSDK;->instance:Lcom/u8/sdk/MZSDK;

    if-nez v0, :cond_b

    .line 43
    new-instance v0, Lcom/u8/sdk/MZSDK;

    invoke-direct {v0}, Lcom/u8/sdk/MZSDK;-><init>()V

    sput-object v0, Lcom/u8/sdk/MZSDK;->instance:Lcom/u8/sdk/MZSDK;

    .line 45
    :cond_b
    sget-object v0, Lcom/u8/sdk/MZSDK;->instance:Lcom/u8/sdk/MZSDK;

    return-object v0
.end method

.method private initSDK()V
    .registers 4

    .prologue
    .line 61
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/MZSDK$1;

    invoke-direct {v1, p0}, Lcom/u8/sdk/MZSDK$1;-><init>(Lcom/u8/sdk/MZSDK;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->setActivityCallback(Lcom/u8/sdk/IActivityCallback;)V

    .line 84
    const-string v0, "U8SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init appid : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/u8/sdk/MZSDK;->AppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appkey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/u8/sdk/MZSDK;->AppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/u8/sdk/MZSDK;->AppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/u8/sdk/MZSDK;->AppKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/meizu/gamecenter/sdk/MzGameCenterPlatform;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/u8/sdk/MZSDK;->mzGameBarPlatform:Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;

    .line 89
    return-void
.end method

.method private parseSDKParams(Lcom/u8/sdk/SDKParams;)V
    .registers 3
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 54
    const-string v0, "MZ_APPID"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/MZSDK;->AppId:Ljava/lang/String;

    .line 55
    const-string v0, "MZ_APPKEY"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/MZSDK;->AppKey:Ljava/lang/String;

    .line 56
    const-string v0, "MZ_PAYURL"

    invoke-virtual {p1, v0}, Lcom/u8/sdk/SDKParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/u8/sdk/MZSDK;->payUrl:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public initSDK(Lcom/u8/sdk/SDKParams;)V
    .registers 2
    .param p1, "params"    # Lcom/u8/sdk/SDKParams;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/u8/sdk/MZSDK;->parseSDKParams(Lcom/u8/sdk/SDKParams;)V

    .line 50
    invoke-direct {p0}, Lcom/u8/sdk/MZSDK;->initSDK()V

    .line 51
    return-void
.end method

.method public login()V
    .registers 3

    .prologue
    .line 93
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/MZSDK$2;

    invoke-direct {v1, p0}, Lcom/u8/sdk/MZSDK$2;-><init>(Lcom/u8/sdk/MZSDK;)V

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/sdk/MzGameCenterPlatform;->login(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzLoginListener;)V

    .line 123
    return-void
.end method

.method public logout()V
    .registers 2

    .prologue
    .line 126
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/gamecenter/sdk/MzGameCenterPlatform;->logout(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 38
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 131
    const-string v8, "SCAmEwggJdAgEAAoGBAKZZeR3NBCZvIb1exgfEuqjAiifRC0t"

    .line 132
    .local v8, "code":Ljava/lang/String;
    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/u8/sdk/MZSDK;->AppId:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/u8/sdk/MZSDK;->mUid:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/u8/sdk/MZSDK;->AppKey:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, "codestr":Ljava/lang/String;
    const-string v33, "U8SDK"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "signstr = "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {v9}, Lcom/u8/sdk/MZSDK;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 137
    .local v16, "mdStr":Ljava/lang/String;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v18, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v33, "orderNo"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v33, "uid"

    new-instance v34, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/u8/sdk/MZSDK;->mUid:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v33, "amount"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/u8/sdk/PayParams;->getPrice()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v33, "signCode"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/u8/sdk/MZSDK;->payUrl:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/u8/sdk/utils/U8HttpUtils;->httpPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "authResult":Ljava/lang/String;
    const-string v33, "U8SDK"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "rescode:  "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v29, ""

    .line 149
    .local v29, "status":Ljava/lang/String;
    const-string v7, ""

    .line 150
    .local v7, "checkOutUrl":Ljava/lang/String;
    const-string v33, "{"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 151
    .local v14, "indexBegin":I
    const-string v33, "}"

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 152
    .local v13, "end":I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v14, v0, :cond_10e

    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v13, v0, :cond_10f

    .line 251
    :cond_10e
    :goto_10e
    return-void

    .line 155
    :cond_10f
    add-int/lit8 v33, v13, 0x1

    move/from16 v0, v33

    invoke-virtual {v4, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 158
    const-string v33, "U8SDK"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "res111 = "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v26, ""

    .line 162
    .local v26, "rescode":Ljava/lang/String;
    const-string v25, ""

    .line 163
    .local v25, "prosubject":Ljava/lang/String;
    const-string v27, ""

    .line 164
    .local v27, "sign":Ljava/lang/String;
    const-string v28, "md5"

    .line 165
    .local v28, "signType":Ljava/lang/String;
    const-string v22, ""

    .line 166
    .local v22, "productid":Ljava/lang/String;
    const-string v21, ""

    .line 167
    .local v21, "productbody":Ljava/lang/String;
    const-string v24, ""

    .line 168
    .local v24, "productunit":Ljava/lang/String;
    const-string v6, ""

    .line 169
    .local v6, "buyamount":Ljava/lang/String;
    const/16 v23, 0x0

    .line 170
    .local v23, "productperprice":I
    const/16 v30, 0x0

    .line 171
    .local v30, "totalprice":I
    const-string v20, ""

    .line 172
    .local v20, "paytype":Ljava/lang/String;
    const-string v32, ""

    .line 173
    .local v32, "userinfo":Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 174
    .local v10, "createTime":J
    const-string v17, ""

    .line 175
    .local v17, "orderid":Ljava/lang/String;
    const-string v31, ""

    .line 176
    .local v31, "uid":Ljava/lang/String;
    new-instance v19, Lorg/json/JSONTokener;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 179
    .local v19, "payRes":Lorg/json/JSONTokener;
    :try_start_152
    const-string v33, "U8SDK"

    const-string v34, "111111111"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    .line 181
    .local v15, "jsonObject":Lorg/json/JSONObject;
    const-string v33, "U8SDK"

    const-string v34, "222222222"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v33, "cp_order_id"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 183
    const-string v33, "U8SDK"

    const-string v34, "222222222"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v33, "uid"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 185
    const-string v33, "U8SDK"

    const-string v34, "3333333333"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v33, "product_id"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 187
    const-string v33, "U8SDK"

    const-string v34, "444444444"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v33, "product_subject"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 189
    const-string v33, "product_body"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 190
    const-string v33, "product_unit"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 191
    const-string v33, "buy_amount"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 192
    const-string v33, "product_per_price"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 193
    const-string v33, "total_price"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v30

    .line 194
    const-string v33, "create_time"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 195
    const-string v33, "pay_type"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 196
    const-string v33, "user_info"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 197
    const-string v33, "sign_type"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 198
    const-string v33, "sign"

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1ea
    .catch Lorg/json/JSONException; {:try_start_152 .. :try_end_1ea} :catch_3e6

    move-result-object v27

    .line 204
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    :goto_1eb
    const-string v33, "U8SDK"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "prosubject = "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "createTime = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "sign = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v33, "U8SDK"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "buyamount = "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "userinfo = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "totalprice = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 207
    const-string v35, "data.getOrderID() = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {p1 .. p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "productperprice = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 208
    const-string v35, "productbody = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "productid = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "prosubject = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 209
    const-string v35, "productunit = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "sign = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "signType = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 210
    const-string v35, "createTime = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "this.AppId = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/u8/sdk/MZSDK;->AppId:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "this.mUid = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/u8/sdk/MZSDK;->mUid:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    .line 211
    const-string v35, "PayType = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 206
    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v33, Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-direct/range {v33 .. v33}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setBuyCount(I)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setCpUserInfo(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    .line 214
    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setOrderAmount(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setOrderId(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setPerPrice(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    .line 215
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setProductBody(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setProductId(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setProductSubject(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    .line 216
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setProductUnit(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setSign(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setSignType(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10, v11}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setCreateTime(J)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/u8/sdk/MZSDK;->AppId:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setAppid(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setUserUid(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v33

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setPayType(I)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v5

    .line 225
    .local v5, "buyInfo":Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    const-string v33, "U8SDK"

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "appid = "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getAppid()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "orderid = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v5}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getOrderId()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "uid = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v5}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getUserUid()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "sign = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v5}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getSign()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "signtype = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v5}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->getSignType()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v33

    new-instance v34, Lcom/u8/sdk/MZSDK$3;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/u8/sdk/MZSDK$3;-><init>(Lcom/u8/sdk/MZSDK;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v5, v1}, Lcom/meizu/gamecenter/sdk/MzGameCenterPlatform;->payOnline(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzBuyInfo;Lcom/meizu/gamecenter/sdk/MzPayListener;)V

    goto/16 :goto_10e

    .line 199
    .end local v5    # "buyInfo":Lcom/meizu/gamecenter/sdk/MzBuyInfo;
    :catch_3e6
    move-exception v12

    .line 201
    .local v12, "e1":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1eb
.end method
