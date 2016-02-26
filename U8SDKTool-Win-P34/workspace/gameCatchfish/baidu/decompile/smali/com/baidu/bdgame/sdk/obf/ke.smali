.class Lcom/baidu/bdgame/sdk/obf/ke;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "10001"

.field private static final c:Ljava/lang/String; = "B38B9F5D42DEF0BDEF067D3009B1E92475E130399C9DC7CC31F0361D6581D0245CB3AE5664D9337D9370C5CC842D9362F4F51A259DDF928080457A40E682A2BB"


# instance fields
.field private a:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lg;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)Ljava/security/interfaces/RSAPublicKey;
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ke;->a:Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_7

    .line 35
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ke;->a:Ljava/security/interfaces/RSAPublicKey;

    .line 42
    :goto_6
    return-object v0

    .line 37
    :cond_7
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/ke;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 39
    const-string v0, "B38B9F5D42DEF0BDEF067D3009B1E92475E130399C9DC7CC31F0361D6581D0245CB3AE5664D9337D9370C5CC842D9362F4F51A259DDF928080457A40E682A2BB"

    .line 41
    :cond_13
    const-string v1, "10001"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ke;->a:Ljava/security/interfaces/RSAPublicKey;

    .line 42
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ke;->a:Ljava/security/interfaces/RSAPublicKey;

    goto :goto_6
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ke;->a:Ljava/security/interfaces/RSAPublicKey;

    .line 47
    invoke-static {p1, p2}, Lcom/baidu/bdgame/sdk/obf/lg;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method
