.class final Lcom/baidu/bdgame/sdk/obf/cn$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/cn$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/cn;->a(Lcom/baidu/bdgame/sdk/obf/dj;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/dj;

.field final synthetic b:Lcom/baidu/bdgame/sdk/obf/cn;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/cn;Lcom/baidu/bdgame/sdk/obf/dj;)V
    .registers 3

    .prologue
    .line 717
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cn$5;->b:Lcom/baidu/bdgame/sdk/obf/cn;

    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/cn$5;->a:Lcom/baidu/bdgame/sdk/obf/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    .prologue
    .line 722
    if-eqz p1, :cond_8

    .line 723
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$5;->b:Lcom/baidu/bdgame/sdk/obf/cn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->d(I)V

    .line 725
    :cond_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$5;->a:Lcom/baidu/bdgame/sdk/obf/dj;

    if-eqz v0, :cond_11

    .line 726
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cn$5;->a:Lcom/baidu/bdgame/sdk/obf/dj;

    invoke-interface {v0, p1}, Lcom/baidu/bdgame/sdk/obf/dj;->a(Z)V

    .line 728
    :cond_11
    return-void
.end method
