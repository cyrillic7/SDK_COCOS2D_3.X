.class Lcom/duoku/platform/view/user/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/user/a;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/user/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/user/a;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/user/a$7;->a:Lcom/duoku/platform/view/user/a;

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$7;->a:Lcom/duoku/platform/view/user/a;

    invoke-static {v0}, Lcom/duoku/platform/view/user/a;->j(Lcom/duoku/platform/view/user/a;)V

    .line 591
    iget-object v0, p0, Lcom/duoku/platform/view/user/a$7;->a:Lcom/duoku/platform/view/user/a;

    invoke-virtual {v0}, Lcom/duoku/platform/view/user/a;->o()V

    .line 592
    return-void
.end method
