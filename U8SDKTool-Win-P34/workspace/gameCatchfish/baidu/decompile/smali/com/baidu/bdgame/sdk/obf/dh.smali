.class public abstract Lcom/baidu/bdgame/sdk/obf/dh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/dh;->a:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)Ljava/lang/String;
.end method

.method public abstract b()I
.end method

.method public abstract b(I)Ljava/lang/String;
.end method

.method public c()Landroid/content/Context;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dh;->a:Landroid/content/Context;

    return-object v0
.end method

.method public abstract c(I)V
.end method

.method public abstract d(I)I
.end method

.method public abstract e(I)Z
.end method

.method public abstract f(I)Lcom/baidu/bdgame/sdk/obf/dp;
.end method

.method public g(I)I
    .registers 4

    .prologue
    .line 23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/dh;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dh;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/dh;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
