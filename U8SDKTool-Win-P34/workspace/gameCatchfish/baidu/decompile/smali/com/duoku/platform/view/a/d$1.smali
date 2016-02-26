.class Lcom/duoku/platform/view/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/d;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/d;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/d$1;->a:Lcom/duoku/platform/view/a/d;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/duoku/platform/view/a/d$1;->a:Lcom/duoku/platform/view/a/d;

    invoke-virtual {v0}, Lcom/duoku/platform/view/a/d;->c()V

    .line 336
    return-void
.end method
