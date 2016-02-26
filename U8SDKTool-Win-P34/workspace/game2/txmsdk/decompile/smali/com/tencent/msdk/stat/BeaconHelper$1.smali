.class Lcom/tencent/msdk/stat/BeaconHelper$1;
.super Ljava/lang/Object;
.source "BeaconHelper.java"

# interfaces
.implements Lcom/tencent/beacon/upload/InitHandleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/stat/BeaconHelper;->init(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/stat/BeaconHelper;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/stat/BeaconHelper;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/tencent/msdk/stat/BeaconHelper$1;->this$0:Lcom/tencent/msdk/stat/BeaconHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitEnd()V
    .registers 5

    .prologue
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start reportEvent onInitEnd;size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/stat/BeaconHelper$1;->this$0:Lcom/tencent/msdk/stat/BeaconHelper;

    # getter for: Lcom/tencent/msdk/stat/BeaconHelper;->gameTimePedding:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/tencent/msdk/stat/BeaconHelper;->access$000(Lcom/tencent/msdk/stat/BeaconHelper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/tencent/msdk/stat/BeaconHelper$1;->this$0:Lcom/tencent/msdk/stat/BeaconHelper;

    const/4 v3, 0x1

    # setter for: Lcom/tencent/msdk/stat/BeaconHelper;->isBeaconInitFinish:Z
    invoke-static {v2, v3}, Lcom/tencent/msdk/stat/BeaconHelper;->access$102(Lcom/tencent/msdk/stat/BeaconHelper;Z)Z

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    iget-object v2, p0, Lcom/tencent/msdk/stat/BeaconHelper$1;->this$0:Lcom/tencent/msdk/stat/BeaconHelper;

    # getter for: Lcom/tencent/msdk/stat/BeaconHelper;->gameTimePedding:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tencent/msdk/stat/BeaconHelper;->access$000(Lcom/tencent/msdk/stat/BeaconHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_45

    .line 59
    iget-object v2, p0, Lcom/tencent/msdk/stat/BeaconHelper$1;->this$0:Lcom/tencent/msdk/stat/BeaconHelper;

    # getter for: Lcom/tencent/msdk/stat/BeaconHelper;->gameTimePedding:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/tencent/msdk/stat/BeaconHelper;->access$000(Lcom/tencent/msdk/stat/BeaconHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/msdk/stat/GameTimeInfo;

    .line 60
    .local v1, "info":Lcom/tencent/msdk/stat/GameTimeInfo;
    # invokes: Lcom/tencent/msdk/stat/BeaconHelper;->ReportGameTime(Lcom/tencent/msdk/stat/GameTimeInfo;)Z
    invoke-static {v1}, Lcom/tencent/msdk/stat/BeaconHelper;->access$200(Lcom/tencent/msdk/stat/GameTimeInfo;)Z

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 62
    .end local v1    # "info":Lcom/tencent/msdk/stat/GameTimeInfo;
    :cond_45
    return-void
.end method

.method public onStrategyQuerySuccess()V
    .registers 1

    .prologue
    .line 52
    return-void
.end method
