.class public Lcom/baidu/bdgame/sdk/obf/hd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/iw;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/iw;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/hd;->a:Lcom/baidu/bdgame/sdk/obf/iw;

    return-object v0
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/iw;)V
    .registers 2

    .prologue
    .line 17
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/hd;->a:Lcom/baidu/bdgame/sdk/obf/iw;

    .line 18
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/baidu/bdgame/sdk/obf/hd;->b:Z

    .line 26
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/hd;->b:Z

    return v0
.end method
