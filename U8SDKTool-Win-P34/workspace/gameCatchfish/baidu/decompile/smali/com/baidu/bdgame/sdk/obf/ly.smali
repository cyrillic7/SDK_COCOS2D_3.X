.class public abstract Lcom/baidu/bdgame/sdk/obf/ly;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/bdgame/sdk/obf/mc;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/baidu/bdgame/sdk/obf/lz;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/ly;->a:I

    .line 33
    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/ly;->b:I

    .line 34
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ly;->a:I

    return v0
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/lz;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ly;->c:Lcom/baidu/bdgame/sdk/obf/lz;

    .line 56
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/ly;->b:I

    return v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ly;->c:Lcom/baidu/bdgame/sdk/obf/lz;

    if-eqz v0, :cond_9

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ly;->c:Lcom/baidu/bdgame/sdk/obf/lz;

    invoke-interface {v0, p0}, Lcom/baidu/bdgame/sdk/obf/lz;->a(Lcom/baidu/bdgame/sdk/obf/mc;)V

    .line 51
    :cond_9
    return-void
.end method
