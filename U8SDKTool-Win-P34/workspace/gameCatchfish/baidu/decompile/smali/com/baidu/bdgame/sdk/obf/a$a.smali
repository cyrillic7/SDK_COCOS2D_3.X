.class public Lcom/baidu/bdgame/sdk/obf/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/f;
.implements Lcom/baidu/bdgame/sdk/obf/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/baidu/bdgame/sdk/obf/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/g;)V
    .registers 3

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/a$a;->a:Landroid/content/Context;

    .line 363
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/a$a;->b:Lcom/baidu/bdgame/sdk/obf/g;

    .line 364
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 368
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/a$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->o(Landroid/content/Context;)V

    .line 369
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 373
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$a;->b:Lcom/baidu/bdgame/sdk/obf/g;

    if-eqz v0, :cond_9

    .line 374
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/a$a;->b:Lcom/baidu/bdgame/sdk/obf/g;

    invoke-interface {v0, p1, p0}, Lcom/baidu/bdgame/sdk/obf/g;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/f;)V

    .line 376
    :cond_9
    return-void
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 383
    if-eqz p1, :cond_a

    .line 384
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->a(Lcom/baidu/bdgame/sdk/obf/o;)V

    .line 388
    :goto_9
    return-void

    .line 386
    :cond_a
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/k;->a(Lcom/baidu/bdgame/sdk/obf/o;)V

    goto :goto_9
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 392
    const-string v0, "91"

    return-object v0
.end method
