.class public Lcom/tencent/beacon/applog/AppLogUploadAction;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doUploadAppLogRecords()V
    .registers 0

    .prologue
    .line 45
    invoke-static {}, Lcom/tencent/beacon/applog/b;->b()V

    .line 46
    return-void
.end method

.method public static onAppLogUploadAction(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/tencent/beacon/applog/AppLogUploadAction;->onAppLogUploadAction(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static onAppLogUploadAction(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/tencent/beacon/applog/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static onAppLogUploadAction(Ljava/lang/String;Z)Z
    .registers 3

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tencent/beacon/applog/AppLogUploadAction;->onAppLogUploadAction(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
