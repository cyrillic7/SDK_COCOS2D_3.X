.class final Lcom/tencent/beacon/event/p$5;
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
    .line 1098
    iput-object p1, p0, Lcom/tencent/beacon/event/p$5;->a:Lcom/tencent/beacon/event/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/tencent/beacon/event/p$5;->a:Lcom/tencent/beacon/event/p;

    invoke-static {v0}, Lcom/tencent/beacon/event/p;->a(Lcom/tencent/beacon/event/p;)V

    .line 1102
    return-void
.end method
