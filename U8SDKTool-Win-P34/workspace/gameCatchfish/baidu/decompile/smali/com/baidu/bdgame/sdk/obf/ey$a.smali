.class Lcom/baidu/bdgame/sdk/obf/ey$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/cn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/ey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ey;


# direct methods
.method private constructor <init>(Lcom/baidu/bdgame/sdk/obf/ey;)V
    .registers 2

    .prologue
    .line 284
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ey$a;->a:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/ey;Lcom/baidu/bdgame/sdk/obf/ey$1;)V
    .registers 3

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/ey$a;-><init>(Lcom/baidu/bdgame/sdk/obf/ey;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey$a;->a:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->a(Lcom/baidu/bdgame/sdk/obf/ey;)Lcom/baidu/bdgame/sdk/obf/er;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey$a;->a:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->a(Lcom/baidu/bdgame/sdk/obf/ey;)Lcom/baidu/bdgame/sdk/obf/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/er;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 290
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ey$a;->a:Lcom/baidu/bdgame/sdk/obf/ey;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ey;->a(Lcom/baidu/bdgame/sdk/obf/ey;)Lcom/baidu/bdgame/sdk/obf/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/er;->a()I

    .line 292
    :cond_1d
    return-void
.end method
