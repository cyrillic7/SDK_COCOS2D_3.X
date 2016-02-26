.class Lcom/duoku/platform/view/AdPageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/view/AdPageView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/AdPageView;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/AdPageView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/AdPageView$1;->a:Lcom/duoku/platform/view/AdPageView;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/duoku/platform/view/AdPageView$1;->a:Lcom/duoku/platform/view/AdPageView;

    invoke-virtual {v0}, Lcom/duoku/platform/view/AdPageView;->c()V

    .line 75
    return-void
.end method
