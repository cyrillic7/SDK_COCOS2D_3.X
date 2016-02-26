.class public abstract Lcom/duoku/platform/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(I)V
.end method

.method public b(I)V
    .registers 3

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/duoku/platform/c;->a:Z

    if-nez v0, :cond_7

    .line 33
    invoke-virtual {p0, p1}, Lcom/duoku/platform/c;->a(I)V

    .line 35
    :cond_7
    return-void
.end method
