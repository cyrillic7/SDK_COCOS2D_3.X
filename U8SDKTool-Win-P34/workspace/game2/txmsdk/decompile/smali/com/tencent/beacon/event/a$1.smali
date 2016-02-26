.class final Lcom/tencent/beacon/event/a$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/beacon/event/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/beacon/event/a;


# direct methods
.method constructor <init>(Lcom/tencent/beacon/event/a;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tencent/beacon/event/a$1;->a:Lcom/tencent/beacon/event/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/beacon/event/a$1;->a:Lcom/tencent/beacon/event/a;

    invoke-static {v0}, Lcom/tencent/beacon/event/a;->a(Lcom/tencent/beacon/event/a;)V

    .line 73
    return-void
.end method
