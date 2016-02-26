.class public Lcom/tencent/tmdownloader/internal/logreport/h;
.super Lcom/tencent/tmassistantbase/network/PostHttpRequest;
.source "ProGuard"


# instance fields
.field protected b:Lcom/tencent/tmdownloader/internal/logreport/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/h;->b:Lcom/tencent/tmdownloader/internal/logreport/f;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/tencent/tmdownloader/internal/logreport/f;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tencent/tmdownloader/internal/logreport/h;->b:Lcom/tencent/tmdownloader/internal/logreport/f;

    .line 62
    return-void
.end method

.method public a(BLcom/tencent/tmdownloader/internal/b/c/b;)Z
    .registers 8

    .prologue
    .line 38
    if-nez p2, :cond_4

    .line 40
    const/4 v0, 0x0

    .line 56
    :goto_3
    return v0

    .line 44
    :cond_4
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getAppPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getAppVersionCode(Landroid/content/Context;)I

    move-result v1

    .line 46
    const-string v2, ""

    .line 48
    iget-object v3, p2, Lcom/tencent/tmdownloader/internal/b/c/b;->b:Ljava/util/List;

    invoke-static {p1, v3, v0, v1, v2}, Lcom/tencent/tmassistant/common/a;->a(BLjava/util/List;Ljava/lang/String;ILjava/lang/String;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;

    .line 52
    invoke-static {v0}, Lcom/tencent/tmassistant/common/a;->b(Lcom/qq/taf/jce/JceStruct;)Lcom/tencent/tmassistant/common/jce/Request;

    move-result-object v1

    .line 54
    invoke-static {v1}, Lcom/tencent/tmassistant/common/a;->a(Lcom/tencent/tmassistant/common/jce/Request;)[B

    move-result-object v1

    .line 55
    const-string v2, "LogReportHttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logReport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " dataSize:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p2, Lcom/tencent/tmdownloader/internal/b/c/b;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-super {p0, v1}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->sendRequest([B)Z

    move-result v0

    goto :goto_3
.end method

.method protected onFinished([B[BI)V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 68
    const-string v0, "LogReportHttpRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http onFinished! + errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz p2, :cond_1d

    if-eqz p3, :cond_27

    .line 71
    :cond_1d
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/h;->b:Lcom/tencent/tmdownloader/internal/logreport/f;

    if-eqz v0, :cond_26

    .line 72
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/h;->b:Lcom/tencent/tmdownloader/internal/logreport/f;

    invoke-interface {v0, p0, v5}, Lcom/tencent/tmdownloader/internal/logreport/f;->a(Lcom/tencent/tmdownloader/internal/logreport/h;Z)V

    .line 109
    :cond_26
    :goto_26
    return-void

    .line 77
    :cond_27
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/h;->b:Lcom/tencent/tmdownloader/internal/logreport/f;

    if-eqz v0, :cond_26

    .line 79
    invoke-static {p2}, Lcom/tencent/tmassistant/common/a;->a([B)Lcom/tencent/tmassistant/common/jce/Response;

    move-result-object v1

    .line 80
    const-class v0, Lcom/tencent/tmassistant/common/jce/Request;

    invoke-static {p1, v0}, Lcom/tencent/tmassistant/common/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistant/common/jce/Request;

    .line 81
    iget-object v0, v0, Lcom/tencent/tmassistant/common/jce/Request;->body:[B

    const-class v2, Lcom/tencent/tmassistant/common/jce/ReportLogRequest;

    invoke-static {v0, v2}, Lcom/tencent/tmassistant/common/a;->a([BLjava/lang/Class;)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    .line 82
    const-string v2, "LogReportHttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jceResp.head.ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/tmassistant/common/jce/Response;->head:Lcom/tencent/tmassistant/common/jce/RspHead;

    iget v4, v4, Lcom/tencent/tmassistant/common/jce/RspHead;->ret:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-eqz v1, :cond_96

    iget-object v2, v1, Lcom/tencent/tmassistant/common/jce/Response;->body:[B

    if-eqz v2, :cond_96

    iget-object v2, v1, Lcom/tencent/tmassistant/common/jce/Response;->head:Lcom/tencent/tmassistant/common/jce/RspHead;

    iget v2, v2, Lcom/tencent/tmassistant/common/jce/RspHead;->ret:I

    if-nez v2, :cond_96

    .line 86
    iget-object v1, v1, Lcom/tencent/tmassistant/common/jce/Response;->body:[B

    invoke-static {v0, v1}, Lcom/tencent/tmassistant/common/a;->a(Lcom/qq/taf/jce/JceStruct;[B)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_8e

    .line 90
    instance-of v1, v0, Lcom/tencent/tmassistant/common/jce/ReportLogResponse;

    if-eqz v1, :cond_86

    .line 91
    check-cast v0, Lcom/tencent/tmassistant/common/jce/ReportLogResponse;

    .line 92
    iget v0, v0, Lcom/tencent/tmassistant/common/jce/ReportLogResponse;->ret:I

    if-nez v0, :cond_80

    .line 93
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/h;->b:Lcom/tencent/tmdownloader/internal/logreport/f;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/tencent/tmdownloader/internal/logreport/f;->a(Lcom/tencent/tmdownloader/internal/logreport/h;Z)V

    goto :goto_26

    .line 95
    :cond_80
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/h;->b:Lcom/tencent/tmdownloader/internal/logreport/f;

    invoke-interface {v0, p0, v5}, Lcom/tencent/tmdownloader/internal/logreport/f;->a(Lcom/tencent/tmdownloader/internal/logreport/h;Z)V

    goto :goto_26

    .line 98
    :cond_86
    const-string v0, "LogReportHttpRequest"

    const-string v1, "response isn\'t instanceof ReportLogResponse !"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 101
    :cond_8e
    const-string v0, "LogReportHttpRequest"

    const-string v1, "jceResponse is null !"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 104
    :cond_96
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/logreport/h;->b:Lcom/tencent/tmdownloader/internal/logreport/f;

    invoke-interface {v0, p0, v5}, Lcom/tencent/tmdownloader/internal/logreport/f;->a(Lcom/tencent/tmdownloader/internal/logreport/h;Z)V

    .line 105
    const-string v0, "LogReportHttpRequest"

    const-string v1, "jceResp is null !"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method
