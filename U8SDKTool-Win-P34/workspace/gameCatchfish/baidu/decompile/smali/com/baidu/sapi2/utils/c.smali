.class public Lcom/baidu/sapi2/utils/c;
.super Ljava/lang/Object;
.source "RSA.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 10
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 73
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 104
    :cond_7
    :goto_7
    return-object v5

    .line 78
    :cond_8
    :try_start_8
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 80
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "content":Ljava/lang/StringBuilder;
    :cond_22
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_3e

    .line 83
    const-string v6, "-----BEGIN PUBLIC KEY-----"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 84
    :goto_30
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 85
    const-string v6, "-----END PUBLIC KEY-----"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 93
    :cond_3e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 94
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 98
    const-string v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 99
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/android/common/security/Base64;->decode([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    goto :goto_7

    .line 88
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :cond_63
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_6a} :catch_6b

    goto :goto_30

    .line 100
    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_6b
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 9
    .param p0, "plain"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 25
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 38
    :cond_9
    :goto_9
    return-object v5

    .line 29
    :cond_a
    :try_start_a
    const-string v6, "RSA/NONE/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 30
    .local v3, "rsa":Ljavax/crypto/Cipher;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 31
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Ljavax/security/cert/X509Certificate;->getInstance(Ljava/io/InputStream;)Ljavax/security/cert/X509Certificate;

    move-result-object v4

    .line 32
    .local v4, "x509Certificate":Ljavax/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 33
    .local v2, "publicKey":Ljava/security/PublicKey;
    const/4 v6, 0x1

    invoke-virtual {v3, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 34
    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2e} :catch_30

    move-result-object v5

    goto :goto_9

    .line 35
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "publicKey":Ljava/security/PublicKey;
    .end local v3    # "rsa":Ljavax/crypto/Cipher;
    .end local v4    # "x509Certificate":Ljavax/security/cert/X509Certificate;
    :catch_30
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "cipher"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 50
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_9
    move-object v4, v5

    .line 65
    :goto_a
    return-object v4

    .line 55
    :cond_b
    :try_start_b
    const-string v4, "RSA/NONE/PKCS1Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 56
    .local v2, "rsa":Ljavax/crypto/Cipher;
    invoke-static {p1}, Lcom/baidu/sapi2/utils/c;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    .line 57
    .local v1, "publicKey":Ljava/security/PublicKey;
    if-eqz v1, :cond_33

    .line 58
    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/android/common/security/Base64;->decode([B)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 60
    .local v3, "utf8":[B
    new-instance v4, Ljava/lang/String;

    const-string v6, "UTF8"

    invoke-direct {v4, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_2e} :catch_2f

    goto :goto_a

    .line 62
    .end local v1    # "publicKey":Ljava/security/PublicKey;
    .end local v2    # "rsa":Ljavax/crypto/Cipher;
    .end local v3    # "utf8":[B
    :catch_2f
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_33
    move-object v4, v5

    .line 65
    goto :goto_a
.end method
