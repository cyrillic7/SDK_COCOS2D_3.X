.class public Lcom/baidu/sapi2/utils/a;
.super Ljava/lang/Object;
.source "SapiDataEncryptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/utils/a$a;,
        Lcom/baidu/sapi2/utils/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "0123456789ABCDEF"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/sapi2/utils/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "kf1t9tsczk16vc8z"

    iput-object v0, p0, Lcom/baidu/sapi2/utils/a;->b:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/baidu/sapi2/utils/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/sapi2/utils/a;->b:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/baidu/sapi2/utils/g;

    invoke-direct {v0}, Lcom/baidu/sapi2/utils/g;-><init>()V

    iput-object v0, p0, Lcom/baidu/sapi2/utils/a;->c:Lcom/baidu/sapi2/utils/g;

    .line 39
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 9
    .param p0, "buf"    # [B

    .prologue
    .line 160
    if-nez p0, :cond_4

    .line 161
    const/4 v5, 0x0

    .line 167
    :goto_3
    return-object v5

    .line 163
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    .local v4, "result":Ljava/lang/StringBuilder;
    move-object v1, p0

    .local v1, "arr$":[B
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_f
    if-ge v2, v3, :cond_2f

    aget-byte v0, v1, v2

    .line 165
    .local v0, "aBuf":B
    const-string v5, "0123456789ABCDEF"

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0123456789ABCDEF"

    and-int/lit8 v7, v0, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 167
    .end local v0    # "aBuf":B
    :cond_2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3
.end method

.method private a(Ljava/security/Key;[B)[B
    .registers 5
    .param p1, "pubkey"    # Ljava/security/Key;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 119
    const-string v1, "RSA/NONE/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 120
    .local v0, "rsa":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 121
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method private b()Ljava/lang/String;
    .registers 7

    .prologue
    .line 106
    const-string v0, "abcdefghijklmnopqrstuvwxyz0123456789"

    .line 107
    .local v0, "base":Ljava/lang/String;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 108
    .local v3, "random":Ljava/util/Random;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    const/16 v5, 0x10

    if-ge v1, v5, :cond_23

    .line 110
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 111
    .local v2, "number":I
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 113
    .end local v2    # "number":I
    :cond_23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "cipherUid"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v4, ""

    .line 127
    .local v4, "uid":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/android/common/security/Base64;->decode([B)[B

    move-result-object v0

    .line 128
    .local v0, "bytes":[B
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, "baiduvoice35hy12"

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "iv":Ljava/lang/String;
    new-instance v5, Lcom/baidu/sapi2/utils/g;

    invoke-direct {v5}, Lcom/baidu/sapi2/utils/g;-><init>()V

    const-string v6, "baiduvoice35hy12"

    invoke-virtual {v5, v0, v3, v6}, Lcom/baidu/sapi2/utils/g;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 130
    .local v1, "decryptByes":[B
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2e} :catch_30

    move-result-object v4

    .line 134
    .end local v0    # "bytes":[B
    .end local v1    # "decryptByes":[B
    .end local v3    # "iv":Ljava/lang/String;
    :goto_2f
    return-object v4

    .line 131
    :catch_30
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_2f
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "uid"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v0, ""

    .line 141
    .local v0, "cipherUid":Ljava/lang/String;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "baiduvoice35hy12"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "iv":Ljava/lang/String;
    new-instance v4, Lcom/baidu/sapi2/utils/g;

    invoke-direct {v4}, Lcom/baidu/sapi2/utils/g;-><init>()V

    const-string v5, "baiduvoice35hy12"

    invoke-virtual {v4, p0, v3, v5}, Lcom/baidu/sapi2/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 143
    .local v2, "encryptBytes":[B
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Lcom/baidu/android/common/security/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_21} :catch_23

    move-result-object v0

    .line 147
    .end local v2    # "encryptBytes":[B
    .end local v3    # "iv":Ljava/lang/String;
    :goto_22
    return-object v0

    .line 144
    :catch_23
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method public static d(Ljava/lang/String;)[B
    .registers 6
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 152
    .local v1, "len":I
    new-array v2, v1, [B

    .line 153
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_24

    .line 154
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 156
    :cond_24
    return-object v2
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "plainPwd"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 172
    if-nez p0, :cond_4

    .line 179
    :cond_3
    :goto_3
    return-object v1

    .line 175
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p0, v2, v3}, Landroid/text/TextUtils;->getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-----BEGIN CERTIFICATE-----\nMIIChzCCAfACAQAwDQYJKoZIhvcNAQEEBQAwgYsxCzAJBgNVBAYTAkNOMRAwDgYD\nVQQIEwdiZWlqaW5nMRAwDgYDVQQHEwdiZWlqaW5nMQ4wDAYDVQQKEwViYWlkdTEO\nMAwGA1UECxMFYmFpZHUxFjAUBgNVBAMTDXd3dy5iYWlkdS5jb20xIDAeBgkqhkiG\n9w0BCQEWEXBhc3MtcmRAYmFpZHUuY29tMB4XDTEzMDMyMjA5NTYyM1oXDTIzMDMy\nMDA5NTYyM1owgYsxCzAJBgNVBAYTAkNOMRAwDgYDVQQIEwdiZWlqaW5nMRAwDgYD\nVQQHEwdiZWlqaW5nMQ4wDAYDVQQKEwViYWlkdTEOMAwGA1UECxMFYmFpZHUxFjAU\nBgNVBAMTDXd3dy5iYWlkdS5jb20xIDAeBgkqhkiG9w0BCQEWEXBhc3MtcmRAYmFp\nZHUuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCzxh67pGWcTONjkofu\nhx8fSPeTDql3mRx6/jzEQv6klkMhLn1XDIU/NoBlzFeiAUZm2orn1JP9R9FxwNiU\n7uPtf5n2eYt//XtYcyJwOK0j4xl2MajLZCITufJ9SQGrDZK/onVCrokIVTlu2Sd1\nJVyXf1wwLx5+1LHjacEstrGCLwIDAQABMA0GCSqGSIb3DQEBBAUAA4GBAFaJ31WX\nD5F1MOFVQtK5Z22eaClL1NZaqjlt7IC22ovWhfO836K07YrYgF97w3DdAsJxXpG+\ny/y8HAvAnPN5IzI1Or6nMgEVZLawkkbvttbcAkhW4fleZPsn06aVYZ1sSxQok/k/\nZOj/cz22nU8JgmiJL0ZChHeHyC3VusOHtUW3\n-----END CERTIFICATE-----"

    invoke-static {v2, v3}, Lcom/baidu/sapi2/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 176
    .local v0, "cipher":[B
    if-eqz v0, :cond_3

    .line 177
    invoke-static {v0}, Lcom/baidu/sapi2/utils/a;->a([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/sapi2/utils/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "decText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/android/common/security/Base64;->decode([B)[B

    move-result-object v1

    .line 97
    .local v1, "decode":[B
    new-instance v3, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/baidu/sapi2/utils/a;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "iv":Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/sapi2/utils/a;->c:Lcom/baidu/sapi2/utils/g;

    iget-object v4, p0, Lcom/baidu/sapi2/utils/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v2, v4}, Lcom/baidu/sapi2/utils/g;->a([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 99
    .local v0, "byDec":[B
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "cert"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 56
    :cond_c
    const/4 v10, 0x0

    .line 85
    :goto_d
    return-object v10

    .line 57
    :cond_e
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 58
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {v1}, Ljavax/security/cert/X509Certificate;->getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;

    move-result-object v9

    .line 59
    .local v9, "x509Certificate":Ljavax/security/cert/X509Certificate;
    invoke-virtual {v9}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    .line 60
    .local v8, "publicKey":Ljava/security/PublicKey;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 61
    .local v0, "array":Lorg/json/JSONArray;
    const-string v10, "UTF-8"

    invoke-virtual {p2, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 63
    .local v3, "by":[B
    array-length v10, v3

    rem-int/lit8 v10, v10, 0x74

    if-nez v10, :cond_48

    .line 64
    array-length v10, v3

    div-int/lit8 v2, v10, 0x74

    .line 68
    .local v2, "blockCount":I
    :goto_32
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_33
    if-ge v6, v2, :cond_87

    .line 69
    const/4 v10, 0x1

    if-ne v10, v2, :cond_4e

    .line 70
    invoke-direct {p0, v8, v3}, Lcom/baidu/sapi2/utils/a;->a(Ljava/security/Key;[B)[B

    move-result-object v5

    .line 71
    .local v5, "encText":[B
    const-string v10, "UTF-8"

    invoke-static {v5, v10}, Lcom/baidu/android/common/security/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 68
    :goto_45
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 66
    .end local v2    # "blockCount":I
    .end local v5    # "encText":[B
    .end local v6    # "i":I
    :cond_48
    array-length v10, v3

    div-int/lit8 v10, v10, 0x74

    add-int/lit8 v2, v10, 0x1

    .restart local v2    # "blockCount":I
    goto :goto_32

    .line 72
    .restart local v6    # "i":I
    :cond_4e
    add-int/lit8 v10, v2, -0x1

    if-eq v6, v10, :cond_6c

    .line 73
    const/16 v10, 0x74

    new-array v4, v10, [B

    .line 74
    .local v4, "byDst":[B
    mul-int/lit8 v10, v6, 0x74

    const/4 v11, 0x0

    const/16 v12, 0x74

    invoke-static {v3, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    invoke-direct {p0, v8, v4}, Lcom/baidu/sapi2/utils/a;->a(Ljava/security/Key;[B)[B

    move-result-object v5

    .line 76
    .restart local v5    # "encText":[B
    const-string v10, "UTF-8"

    invoke-static {v5, v10}, Lcom/baidu/android/common/security/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_45

    .line 78
    .end local v4    # "byDst":[B
    .end local v5    # "encText":[B
    :cond_6c
    array-length v10, v3

    mul-int/lit8 v11, v6, 0x74

    sub-int v7, v10, v11

    .line 79
    .local v7, "lastBlockLen":I
    new-array v4, v7, [B

    .line 80
    .restart local v4    # "byDst":[B
    mul-int/lit8 v10, v6, 0x74

    const/4 v11, 0x0

    invoke-static {v3, v10, v4, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    invoke-direct {p0, v8, v4}, Lcom/baidu/sapi2/utils/a;->a(Ljava/security/Key;[B)[B

    move-result-object v5

    .line 82
    .restart local v5    # "encText":[B
    const-string v10, "UTF-8"

    invoke-static {v5, v10}, Lcom/baidu/android/common/security/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_45

    .line 85
    .end local v4    # "byDst":[B
    .end local v5    # "encText":[B
    .end local v7    # "lastBlockLen":I
    :cond_87
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Lcom/baidu/android/common/security/Base64;->encode([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_d
.end method
