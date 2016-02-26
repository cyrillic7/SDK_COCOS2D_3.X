.class Lcom/baidu/bdgame/sdk/obf/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lcom/baidu/bdgame/sdk/obf/e;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 50
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/e;-><init>(Lcom/baidu/bdgame/sdk/obf/e$1;)V

    sput-object v0, Lcom/baidu/bdgame/sdk/obf/e$a;->a:Lcom/baidu/bdgame/sdk/obf/e;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
