.class Lcom/xiaomi/gamecenter/sdk/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

.field private b:Landroid/app/Activity;

.field private c:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;

.field private d:[Ljava/lang/Object;

.field private e:I


# direct methods
.method public varargs constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;ILcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;[Ljava/lang/Object;)V
    .registers 7

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/ae;->c:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    iput p3, p0, Lcom/xiaomi/gamecenter/sdk/ae;->e:I

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(I)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
    .registers 12

    packed-switch p1, :pswitch_data_342

    const/4 v1, 0x0

    :goto_4
    return-object v1

    :pswitch_5
    :try_start_5
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->loadGameInfo()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto :goto_4

    :pswitch_10
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->loadGameMe()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto :goto_4

    :pswitch_1b
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->loadGameFriends()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto :goto_4

    :pswitch_26
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->loadGameMessage()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto :goto_4

    :pswitch_31
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    check-cast v1, [B

    check-cast v1, [B

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    check-cast v2, [B

    check-cast v2, [B

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v5}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v5

    invoke-interface {v5, v3, v4, v1, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->updateMe(II[B[B)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto :goto_4

    :pswitch_64
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->acceptMessage(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto :goto_4

    :pswitch_76
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->acceptAllMessage()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto :goto_4

    :pswitch_81
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->useHeart(IZ)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_a3
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v5, 0x3

    aget-object v1, v1, v5

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v5, v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v6, 0x4

    aget-object v1, v1, v6

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v6, v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v7, 0x5

    aget-object v1, v1, v7

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v7, 0x6

    aget-object v9, v1, v7

    check-cast v9, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->useHeartToken:Ljava/lang/String;
    invoke-static {v7}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1900(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v1 .. v9}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->updateResult(Ljava/lang/String;II[B[BLjava/lang/String;ILjava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_fa
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v0, v1

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v5, 0x3

    aget-object v1, v1, v5

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v5, v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v6, 0x4

    aget-object v1, v1, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v6, 0x5

    aget-object v8, v1, v6

    check-cast v8, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-direct {p0, v2}, Lcom/xiaomi/gamecenter/sdk/ae;->a(Ljava/util/HashMap;)[Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;

    move-result-object v2

    iget-object v6, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->useHeartToken:Ljava/lang/String;
    invoke-static {v6}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1900(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v8}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->updateResults([Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;I[B[BLjava/lang/String;ILjava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_14c
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v5, 0x3

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v6, 0x4

    aget-object v1, v1, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v7, 0x5

    aget-object v1, v1, v7

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v7, v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v8, 0x6

    aget-object v1, v1, v8

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v8, v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-direct {p0, v8}, Lcom/xiaomi/gamecenter/sdk/ae;->a(Ljava/util/List;)[Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->sendGameMessage(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I[B[Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_19b
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v4

    invoke-interface {v4, v1, v3, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->loadLeaderBoard(Ljava/lang/String;II)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_1c4
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->messageBlock(Z)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_1db
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v5, 0x3

    aget-object v1, v1, v5

    move-object v0, v1

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-direct {p0, v5}, Lcom/xiaomi/gamecenter/sdk/ae;->a(Ljava/util/List;)[Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
    invoke-static {v6}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$2000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->sendInviteMessage(Ljava/lang/String;ZLjava/lang/String;[Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_213
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
    invoke-static {v5}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$2000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    move-result-object v5

    invoke-interface {v4, v1, v2, v3, v5}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->sendInviteMessageNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_23a
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->deleteMe()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_246
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->loadLotteryPrize()Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_252
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
    invoke-static {v5}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$2000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    move-result-object v5

    invoke-interface {v4, v5, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->shareToMiliao(Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_279
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$2000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    move-result-object v4

    invoke-interface {v3, v2, v1, v4}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->shareToMiliaoForLargeImg(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_299
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v5, 0x3

    aget-object v1, v1, v5

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v5, v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v6, 0x4

    aget-object v1, v1, v6

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v6, v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->syncResult(Ljava/lang/String;II[B[B)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_2d8
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    check-cast v2, [B

    check-cast v2, [B

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v5, 0x3

    aget-object v3, v3, v5

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v5}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/xiaomi/gamecenter/sdk/ae;->a(Ljava/util/HashMap;)[Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;

    move-result-object v1

    invoke-interface {v5, v1, v4, v2, v3}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->syncResults([Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;I[B[B)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v1

    goto/16 :goto_4

    :pswitch_30c
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v4, v1, v4

    check-cast v4, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->d:[Ljava/lang/Object;

    const/4 v5, 0x3

    aget-object v5, v1, v5

    check-cast v5, Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    iget-object v6, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
    invoke-static {v6}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$2000(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->shareToMiTalkForImgAndUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;
    :try_end_337
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_337} :catch_33a

    move-result-object v1

    goto/16 :goto_4

    :catch_33a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto/16 :goto_4

    nop

    :pswitch_data_342
    .packed-switch 0x1
        :pswitch_5
        :pswitch_10
        :pswitch_1b
        :pswitch_31
        :pswitch_26
        :pswitch_14c
        :pswitch_64
        :pswitch_76
        :pswitch_81
        :pswitch_a3
        :pswitch_fa
        :pswitch_19b
        :pswitch_1c4
        :pswitch_1db
        :pswitch_23a
        :pswitch_246
        :pswitch_252
        :pswitch_299
        :pswitch_2d8
        :pswitch_279
        :pswitch_213
        :pswitch_30c
    .end packed-switch
.end method

.method private a(Ljava/util/List;)[Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;
    .registers 9

    if-eqz p1, :cond_3d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;

    const/4 v0, 0x0

    move v3, v0

    :goto_a
    if-ge v3, v4, :cond_3b

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;

    invoke-direct {v5}, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "os"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v6, "executeurl"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->setOs(Ljava/lang/String;)V

    if-eqz v1, :cond_35

    invoke-virtual {v5, v1}, Lcom/xiaomi/gamecenter/sdk/gam/GamMetaInfo;->setExecuteurl(Ljava/lang/String;)V

    :cond_35
    aput-object v5, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    :cond_3b
    move-object v0, v2

    :goto_3c
    return-object v0

    :cond_3d
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method private a(Ljava/util/HashMap;)[Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;
    .registers 8

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;

    invoke-direct {v5}, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5, v1}, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->setScoreKey(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/xiaomi/gamecenter/sdk/gam/ScoresEntry;->setScoreValue(I)V

    aput-object v5, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    :cond_3f
    move-object v0, v3

    :goto_40
    return-object v0

    :cond_41
    const/4 v0, 0x0

    goto :goto_40
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->check_and_connect(Landroid/content/Context;Z)I
    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1100(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;Z)I

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ae;->c:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;

    const/16 v1, -0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_a9
    .catchall {:try_start_1 .. :try_end_1a} :catchall_d2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    :goto_2a
    return-void

    :cond_2b
    :try_start_2b
    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ae;->e:I

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ae;->a(I)Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    move-result-object v0

    if-eqz v0, :cond_a0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v2, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->getSdkStatus()I

    move-result v3

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->check_user_changed(Landroid/app/Activity;I)Z
    invoke-static {v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1500(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;I)Z

    move-result v1

    if-nez v1, :cond_8f

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->e:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_53

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->e:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_59

    :cond_53
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v2, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->useHeartToken:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1902(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Ljava/lang/String;)Ljava/lang/String;

    :cond_59
    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_69

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->getMiliaoInfo()Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    move-result-object v1

    if-eqz v1, :cond_69

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;
    invoke-static {v2, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$2002(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;)Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    :cond_69
    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->e:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_82

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->getHeartToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_82

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->getHeartToken()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->useHeartToken:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1902(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Ljava/lang/String;)Ljava/lang/String;

    :cond_82
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->c:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->getSdkStatus()I

    move-result v2

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->getMsgResult()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_8f} :catch_a9
    .catchall {:try_start_2b .. :try_end_8f} :catchall_d2

    :cond_8f
    :goto_8f
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto :goto_2a

    :cond_a0
    :try_start_a0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ae;->c:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;

    const/16 v1, -0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a8} :catch_a9
    .catchall {:try_start_a0 .. :try_end_a8} :catchall_d2

    goto :goto_8f

    :catch_a9
    move-exception v0

    :try_start_aa
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_d2

    :try_start_ad
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ae;->c:Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;

    const/16 v1, -0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendResultMsg(ILjava/lang/String;)V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_bb} :catch_cd
    .catchall {:try_start_ad .. :try_end_bb} :catchall_d2

    :goto_bb
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    goto/16 :goto_2a

    :catch_cd
    move-exception v0

    :try_start_ce
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_d2

    goto :goto_bb

    :catchall_d2
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # setter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z
    invoke-static {v1, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ae;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1300(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;)V

    throw v0
.end method
