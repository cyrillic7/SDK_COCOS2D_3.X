.class Lcom/u8/sdk/ATETSDK$1;
.super Lcom/u8/sdk/ActivityCallbackAdapter;
.source "ATETSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ATETSDK;->initSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/ATETSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ATETSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/ATETSDK$1;->this$0:Lcom/u8/sdk/ATETSDK;

    .line 70
    invoke-direct {p0}, Lcom/u8/sdk/ActivityCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 1

    .prologue
    .line 76
    invoke-static {}, Lcom/atet/api/SDKApi;->recycle()V

    .line 77
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 95
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method
