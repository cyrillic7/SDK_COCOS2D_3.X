.class public Lcom/baidu/bdgame/sdk/obf/kp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "RSA/ECB/PKCS1Padding"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kp;->a:Ljava/lang/String;

    .line 29
    const-string v0, "RSA"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kp;->b:Ljava/lang/String;

    .line 31
    const-string v0, "utf-8"

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/kp;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/security/KeyPair;
    .registers 3

    .prologue
    .line 41
    :try_start_0
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kp;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 42
    const/16 v1, 0x200

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 43
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    .line 49
    :goto_14
    return-object v0

    .line 45
    :catch_15
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 49
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .registers 5

    .prologue
    const/16 v2, 0x10

    .line 82
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kp;->a([B[B)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public static a([B[B)Ljava/security/interfaces/RSAPublicKey;
    .registers 6

    .prologue
    .line 61
    :try_start_0
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kp;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 62
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p0}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 63
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_1b} :catch_22

    .line 71
    :goto_1b
    return-object v0

    .line 64
    :catch_1c
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 71
    :goto_20
    const/4 v0, 0x0

    goto :goto_1b

    .line 67
    :catch_22
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_20
.end method

.method public static a(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 228
    sput-object p0, Lcom/baidu/bdgame/sdk/obf/kp;->c:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public static a(Ljava/security/Key;Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 168
    :try_start_0
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kp;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 169
    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kp;->a(Ljava/security/Key;[B)[B
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 174
    :goto_a
    return-object v0

    .line 170
    :catch_b
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 174
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static a(Ljava/security/Key;[B)[B
    .registers 15

    .prologue
    .line 130
    :try_start_0
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kp;->a:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 132
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    .line 136
    array-length v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v12

    .line 137
    array-length v1, p1

    rem-int/2addr v1, v3

    .line 138
    if-eqz v1, :cond_38

    array-length v1, p1

    div-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x1

    .line 140
    :goto_1b
    mul-int/2addr v1, v12

    new-array v4, v1, [B

    .line 141
    const/4 v1, 0x0

    move v11, v1

    .line 142
    :goto_20
    array-length v1, p1

    mul-int v2, v11, v3

    sub-int/2addr v1, v2

    if-lez v1, :cond_50

    .line 143
    array-length v1, p1

    mul-int v2, v11, v3

    sub-int/2addr v1, v2

    if-le v1, v3, :cond_3b

    .line 144
    mul-int v2, v11, v3

    mul-int v5, v11, v12

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 151
    :goto_34
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_20

    .line 138
    :cond_38
    array-length v1, p1

    div-int/2addr v1, v3

    goto :goto_1b

    .line 147
    :cond_3b
    mul-int v7, v11, v3

    array-length v1, p1

    mul-int v2, v11, v3

    sub-int v8, v1, v2

    mul-int v10, v11, v12

    move-object v5, v0

    move-object v6, p1

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_34

    .line 154
    :catch_4b
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    const/4 v4, 0x0

    :cond_50
    return-object v4
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 224
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;
    .registers 5

    .prologue
    const/16 v2, 0x10

    .line 118
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kp;->b([B[B)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public static b([B[B)Ljava/security/interfaces/RSAPrivateKey;
    .registers 6

    .prologue
    .line 94
    .line 96
    :try_start_0
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kp;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p0}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 99
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1b} :catch_1c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_1b} :catch_22

    .line 107
    :goto_1b
    return-object v0

    .line 100
    :catch_1c
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 107
    :goto_20
    const/4 v0, 0x0

    goto :goto_1b

    .line 103
    :catch_22
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_20
.end method

.method public static b(Ljava/security/Key;[B)[B
    .registers 8

    .prologue
    .line 190
    :try_start_0
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kp;->a:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 191
    const/4 v0, 0x2

    invoke-virtual {v1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 192
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    .line 193
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x40

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 194
    const/4 v0, 0x0

    .line 195
    :goto_16
    array-length v4, p1

    mul-int v5, v0, v2

    sub-int/2addr v4, v5

    if-lez v4, :cond_28

    .line 196
    mul-int v4, v0, v2

    invoke-virtual {v1, p1, v4, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 199
    :cond_28
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2d

    move-result-object v0

    .line 203
    :goto_2c
    return-object v0

    .line 200
    :catch_2d
    move-exception v0

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public static c(Ljava/security/Key;[B)Ljava/lang/String;
    .registers 5

    .prologue
    .line 214
    :try_start_0
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kp;->b(Ljava/security/Key;[B)[B

    move-result-object v1

    .line 215
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/kp;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    .line 220
    :goto_b
    return-object v0

    .line 216
    :catch_c
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 220
    const/4 v0, 0x0

    goto :goto_b
.end method
