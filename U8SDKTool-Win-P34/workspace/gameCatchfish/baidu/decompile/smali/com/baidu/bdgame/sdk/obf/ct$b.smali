.class Lcom/baidu/bdgame/sdk/obf/ct$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field final synthetic c:Lcom/baidu/bdgame/sdk/obf/ct;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;)V
    .registers 2

    .prologue
    .line 363
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ct$b;->c:Lcom/baidu/bdgame/sdk/obf/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/ct;Lcom/baidu/bdgame/sdk/obf/ct$1;)V
    .registers 3

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ct$b;-><init>(Lcom/baidu/bdgame/sdk/obf/ct;)V

    return-void
.end method
