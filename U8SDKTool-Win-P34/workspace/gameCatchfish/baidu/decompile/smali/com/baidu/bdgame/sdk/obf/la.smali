.class public Lcom/baidu/bdgame/sdk/obf/la;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/la$1;,
        Lcom/baidu/bdgame/sdk/obf/la$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "BaiduPlatformSDK"

.field private static b:Lcom/baidu/bdgame/sdk/obf/la$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/la;->b:Lcom/baidu/bdgame/sdk/obf/la$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 32
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/la;->b:Lcom/baidu/bdgame/sdk/obf/la$a;

    if-nez v0, :cond_10

    .line 33
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/la$a;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/la$a;-><init>()V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/la;->b:Lcom/baidu/bdgame/sdk/obf/la$a;

    .line 34
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/la;->b:Lcom/baidu/bdgame/sdk/obf/la$a;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/la$a;->a()V

    .line 36
    :cond_10
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/la;->b:Lcom/baidu/bdgame/sdk/obf/la$a;

    invoke-virtual {v0, p0, p1}, Lcom/baidu/bdgame/sdk/obf/la$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
