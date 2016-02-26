.class final Lcom/tencent/beacon/event/p$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/event/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/beacon/event/p;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/event/p;)V
    .registers 2

    .prologue
    .line 812
    iput-object p1, p0, Lcom/tencent/beacon/event/p$3;->a:Lcom/tencent/beacon/event/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 816
    iget-object v0, p0, Lcom/tencent/beacon/event/p$3;->a:Lcom/tencent/beacon/event/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/beacon/event/p;->d(Z)Z

    .line 817
    return-void
.end method
