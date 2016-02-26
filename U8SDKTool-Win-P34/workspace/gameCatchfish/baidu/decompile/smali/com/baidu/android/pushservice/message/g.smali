.class public final enum Lcom/baidu/android/pushservice/message/g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/android/pushservice/message/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/android/pushservice/message/g;

.field public static final enum b:Lcom/baidu/android/pushservice/message/g;

.field public static final enum c:Lcom/baidu/android/pushservice/message/g;

.field public static final enum d:Lcom/baidu/android/pushservice/message/g;

.field public static final enum e:Lcom/baidu/android/pushservice/message/g;

.field public static final enum f:Lcom/baidu/android/pushservice/message/g;

.field public static final enum g:Lcom/baidu/android/pushservice/message/g;

.field private static final synthetic i:[Lcom/baidu/android/pushservice/message/g;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/baidu/android/pushservice/message/g;

    const-string v1, "TYPE_INVALUE"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/android/pushservice/message/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/android/pushservice/message/g;->a:Lcom/baidu/android/pushservice/message/g;

    new-instance v0, Lcom/baidu/android/pushservice/message/g;

    const-string v1, "MSG_ID_HANDSHAKE"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/android/pushservice/message/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/android/pushservice/message/g;->b:Lcom/baidu/android/pushservice/message/g;

    new-instance v0, Lcom/baidu/android/pushservice/message/g;

    const-string v1, "MSG_ID_HEARTBEAT_SERVER"

    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/android/pushservice/message/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/android/pushservice/message/g;->c:Lcom/baidu/android/pushservice/message/g;

    new-instance v0, Lcom/baidu/android/pushservice/message/g;

    const-string v1, "MSG_ID_HEARTBEAT_CLIENT"

    invoke-direct {v0, v1, v6, v7}, Lcom/baidu/android/pushservice/message/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/android/pushservice/message/g;->d:Lcom/baidu/android/pushservice/message/g;

    new-instance v0, Lcom/baidu/android/pushservice/message/g;

    const-string v1, "MSG_ID_PUSH_MSG"

    invoke-direct {v0, v1, v7, v6}, Lcom/baidu/android/pushservice/message/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/android/pushservice/message/g;->e:Lcom/baidu/android/pushservice/message/g;

    new-instance v0, Lcom/baidu/android/pushservice/message/g;

    const-string v1, "MSG_ID_TINY_HEARTBEAT_CLIENT"

    invoke-direct {v0, v1, v8, v8}, Lcom/baidu/android/pushservice/message/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/android/pushservice/message/g;->f:Lcom/baidu/android/pushservice/message/g;

    new-instance v0, Lcom/baidu/android/pushservice/message/g;

    const-string v1, "MSG_ID_TINY_HEARTBEAT_SERVER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/android/pushservice/message/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/android/pushservice/message/g;->g:Lcom/baidu/android/pushservice/message/g;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/baidu/android/pushservice/message/g;

    const/4 v1, 0x0

    sget-object v2, Lcom/baidu/android/pushservice/message/g;->a:Lcom/baidu/android/pushservice/message/g;

    aput-object v2, v0, v1

    sget-object v1, Lcom/baidu/android/pushservice/message/g;->b:Lcom/baidu/android/pushservice/message/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/android/pushservice/message/g;->c:Lcom/baidu/android/pushservice/message/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/android/pushservice/message/g;->d:Lcom/baidu/android/pushservice/message/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/android/pushservice/message/g;->e:Lcom/baidu/android/pushservice/message/g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/android/pushservice/message/g;->f:Lcom/baidu/android/pushservice/message/g;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/android/pushservice/message/g;->g:Lcom/baidu/android/pushservice/message/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/android/pushservice/message/g;->i:[Lcom/baidu/android/pushservice/message/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/baidu/android/pushservice/message/g;->h:I

    return-void
.end method

.method public static a(I)Lcom/baidu/android/pushservice/message/g;
    .registers 2

    packed-switch p0, :pswitch_data_18

    sget-object v0, Lcom/baidu/android/pushservice/message/g;->a:Lcom/baidu/android/pushservice/message/g;

    :goto_5
    return-object v0

    :pswitch_6
    sget-object v0, Lcom/baidu/android/pushservice/message/g;->b:Lcom/baidu/android/pushservice/message/g;

    goto :goto_5

    :pswitch_9
    sget-object v0, Lcom/baidu/android/pushservice/message/g;->c:Lcom/baidu/android/pushservice/message/g;

    goto :goto_5

    :pswitch_c
    sget-object v0, Lcom/baidu/android/pushservice/message/g;->d:Lcom/baidu/android/pushservice/message/g;

    goto :goto_5

    :pswitch_f
    sget-object v0, Lcom/baidu/android/pushservice/message/g;->e:Lcom/baidu/android/pushservice/message/g;

    goto :goto_5

    :pswitch_12
    sget-object v0, Lcom/baidu/android/pushservice/message/g;->f:Lcom/baidu/android/pushservice/message/g;

    goto :goto_5

    :pswitch_15
    sget-object v0, Lcom/baidu/android/pushservice/message/g;->g:Lcom/baidu/android/pushservice/message/g;

    goto :goto_5

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_f
        :pswitch_c
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/android/pushservice/message/g;
    .registers 2

    const-class v0, Lcom/baidu/android/pushservice/message/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/message/g;

    return-object v0
.end method

.method public static values()[Lcom/baidu/android/pushservice/message/g;
    .registers 1

    sget-object v0, Lcom/baidu/android/pushservice/message/g;->i:[Lcom/baidu/android/pushservice/message/g;

    invoke-virtual {v0}, [Lcom/baidu/android/pushservice/message/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/android/pushservice/message/g;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/baidu/android/pushservice/message/g;->h:I

    return v0
.end method
