.class Lcom/baidu/android/pushservice/a/a/a$b;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/android/pushservice/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static a:Ljava/security/KeyStore;

.field static b:Lcom/baidu/android/pushservice/a/a/a$b;


# instance fields
.field c:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lcom/baidu/android/pushservice/a/a/a$b;->a:Ljava/security/KeyStore;

    sget-object v0, Lcom/baidu/android/pushservice/a/a/a$b;->a:Ljava/security/KeyStore;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    new-instance v0, Lcom/baidu/android/pushservice/a/a/b;

    invoke-direct {v0, p0}, Lcom/baidu/android/pushservice/a/a/b;-><init>(Lcom/baidu/android/pushservice/a/a/a$b;)V

    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/android/pushservice/a/a/a$b;->c:Ljavax/net/ssl/SSLContext;

    iget-object v1, p0, Lcom/baidu/android/pushservice/a/a/a$b;->c:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_28

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/a/a/a$b;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    :goto_27
    return-void

    :cond_28
    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p0, v0}, Lcom/baidu/android/pushservice/a/a/a$b;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    goto :goto_27
.end method

.method static a()Lcom/baidu/android/pushservice/a/a/a$b;
    .registers 2

    sget-object v0, Lcom/baidu/android/pushservice/a/a/a$b;->b:Lcom/baidu/android/pushservice/a/a/a$b;

    if-nez v0, :cond_d

    :try_start_4
    new-instance v0, Lcom/baidu/android/pushservice/a/a/a$b;

    sget-object v1, Lcom/baidu/android/pushservice/a/a/a$b;->a:Ljava/security/KeyStore;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/a/a/a$b;-><init>(Ljava/security/KeyStore;)V

    sput-object v0, Lcom/baidu/android/pushservice/a/a/a$b;->b:Lcom/baidu/android/pushservice/a/a/a$b;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_10

    :cond_d
    :goto_d
    sget-object v0, Lcom/baidu/android/pushservice/a/a/a$b;->b:Lcom/baidu/android/pushservice/a/a/a$b;

    return-object v0

    :catch_10
    move-exception v0

    goto :goto_d
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/android/pushservice/a/a/a$b;->c:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/android/pushservice/a/a/a$b;->c:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
