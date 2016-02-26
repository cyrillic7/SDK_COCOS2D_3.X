.class Lcom/duoku/platform/util/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/util/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/util/i;


# direct methods
.method constructor <init>(Lcom/duoku/platform/util/i;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/util/i$2;->a:Lcom/duoku/platform/util/i;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/duoku/platform/util/i$2;->a:Lcom/duoku/platform/util/i;

    invoke-static {v0}, Lcom/duoku/platform/util/i;->b(Lcom/duoku/platform/util/i;)V

    .line 64
    return-void
.end method
