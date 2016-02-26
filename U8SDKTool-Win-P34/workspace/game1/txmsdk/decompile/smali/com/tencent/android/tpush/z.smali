.class final Lcom/tencent/android/tpush/z;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/XGIOperateCallback;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 847
    iput-object p1, p0, Lcom/tencent/android/tpush/z;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Object;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 856
    iget-object v0, p0, Lcom/tencent/android/tpush/z;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;)V

    .line 857
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 851
    iget-object v0, p0, Lcom/tencent/android/tpush/z;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/android/tpush/XGPushManager;->a(Landroid/content/Context;)V

    .line 852
    return-void
.end method
