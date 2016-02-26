.class Lcom/duoku/platform/view/common/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/common/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/common/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/common/a$1;->a:Lcom/duoku/platform/view/common/a;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 69
    sget-boolean v0, Lcom/duoku/platform/view/common/a;->c:Z

    if-nez v0, :cond_f

    sget-object v0, Lcom/duoku/platform/view/common/a;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 71
    sget-object v0, Lcom/duoku/platform/view/common/a;->d:Landroid/widget/ImageView;

    sget v1, Lcom/duoku/platform/view/common/a;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    :cond_f
    return-void
.end method
