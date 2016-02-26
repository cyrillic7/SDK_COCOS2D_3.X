.class public abstract Lcom/tencent/beacon/f/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/tencent/beacon/f/a;)V
.end method

.method public abstract a(Lcom/tencent/beacon/f/b;)V
.end method

.method public final a()[B
    .registers 2

    .prologue
    .line 31
    new-instance v0, Lcom/tencent/beacon/f/b;

    invoke-direct {v0}, Lcom/tencent/beacon/f/b;-><init>()V

    .line 32
    invoke-virtual {p0, v0}, Lcom/tencent/beacon/f/c;->a(Lcom/tencent/beacon/f/b;)V

    .line 33
    invoke-virtual {v0}, Lcom/tencent/beacon/f/b;->b()[B

    move-result-object v0

    return-object v0
.end method
