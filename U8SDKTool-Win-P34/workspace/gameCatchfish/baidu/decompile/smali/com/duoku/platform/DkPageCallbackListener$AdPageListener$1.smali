.class Lcom/duoku/platform/DkPageCallbackListener$AdPageListener$1;
.super Lcom/duoku/platform/view/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;


# direct methods
.method constructor <init>(Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener$1;->a:Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;

    .line 39
    invoke-direct {p0, p2}, Lcom/duoku/platform/view/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/duoku/platform/view/c;->onBackPressed()V

    .line 45
    invoke-virtual {p0}, Lcom/duoku/platform/DkPageCallbackListener$AdPageListener$1;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/view/AdPageView;

    invoke-virtual {v0}, Lcom/duoku/platform/view/AdPageView;->c()V

    .line 46
    return-void
.end method
