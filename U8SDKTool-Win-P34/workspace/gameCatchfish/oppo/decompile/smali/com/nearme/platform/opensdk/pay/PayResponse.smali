.class public Lcom/nearme/platform/opensdk/pay/PayResponse;
.super Ljava/lang/Object;
.source "PayResponse.java"


# static fields
.field public static final CODE_CANCEL:I = 0x3ec

.field public static final CODE_RESULT_UNKNOWN:I = 0x3ed

.field public static final CODE_SUCCESS:I = 0x3e9

.field public static final ERROR_ABSENCE_PARAM:I = 0x4b1

.field public static final ERROR_AMOUNT_ERROR:I = 0x1388

.field public static final ERROR_AUTH_FAILED:I = 0x138d

.field public static final ERROR_BALANCE_NOT_ENOUGH:I = 0x138a

.field public static final ERROR_DIRECTPAY_FAILED:I = 0x9c41

.field public static final ERROR_DIRECTPAY_FAILED_UNSAFE:I = 0x9c43

.field public static final ERROR_DIRECTPAY_SUCCESS:I = 0x9c40

.field public static final ERROR_DIRECTPAY_UNKNOWN:I = 0x9c42

.field public static final ERROR_IN_PROGRESS:I = 0x3f4

.field public static final ERROR_MERCHANT_ORDERID_REPEAT:I = 0x138e

.field public static final ERROR_NO_NEW_VERSION:I = 0x3ef

.field public static final ERROR_ORDERID_REPEAT:I = 0x3ea

.field public static final ERROR_OVER_MAX_LIMIT:I = 0x3eb

.field public static final ERROR_PARAM_INVALID:I = 0x138b

.field public static final ERROR_PAY_FAIL:I = 0x44c

.field public static final ERROR_PAY_FAILED:I = 0x15b3

.field public static final ERROR_PAY_FAILED_OTHER:I = 0x3f2

.field public static final ERROR_QUERY_BALANCE_FAILED:I = 0x7531

.field public static final ERROR_QUERY_BALANCE_SUCCESS:I = 0x7530

.field public static final ERROR_QUERY_BALANCE_UNKNOWN:I = 0x7532

.field public static final ERROR_QUERY_ORDER_FAILED:I = 0xc351

.field public static final ERROR_QUERY_ORDER_SUCCESS:I = 0xc350

.field public static final ERROR_QUERY_ORDER_UNKNOWN:I = 0xc352

.field public static final ERROR_SINAGURE_ERROR:I = 0x4b0

.field public static final ERROR_SYSTEM_ERROR:I = 0x1389

.field public static final ERROR_USER_NOT_EXISTS:I = 0x138c


# instance fields
.field public mErrorCode:I

.field public mMsg:Ljava/lang/String;

.field public mOder:Ljava/lang/String;

.field public mRawMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMsg(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    sparse-switch p0, :sswitch_data_54

    .line 171
    const-string v0, "\u672a\u77e5\u7ed3\u679c"

    :goto_5
    return-object v0

    .line 117
    :sswitch_6
    const-string v0, "\u6210\u529f"

    goto :goto_5

    .line 119
    :sswitch_9
    const-string v0, "\u53d6\u6d88"

    goto :goto_5

    .line 121
    :sswitch_c
    const-string v0, "\u7ed3\u679c\u672a\u77e5"

    goto :goto_5

    .line 123
    :sswitch_f
    const-string v0, "\u91d1\u989d\u9519\u8bef"

    goto :goto_5

    .line 125
    :sswitch_12
    const-string v0, "\u7cfb\u7edf\u9519\u8bef"

    goto :goto_5

    .line 127
    :sswitch_15
    const-string v0, "\u4f59\u989d\u4e0d\u8db3"

    goto :goto_5

    .line 129
    :sswitch_18
    const-string v0, "\u5546\u6237\u8ba2\u5355\u53f7\u91cd\u590d"

    goto :goto_5

    .line 131
    :sswitch_1b
    const-string v0, "\u7528\u6237\u4e0d\u5b58\u5728"

    goto :goto_5

    .line 133
    :sswitch_1e
    const-string v0, "\u8d85\u8fc7\u6700\u5927\u9650\u989d"

    goto :goto_5

    .line 135
    :sswitch_21
    const-string v0, "\u8ba2\u5355\u53f7\u91cd\u590d"

    goto :goto_5

    .line 139
    :sswitch_24
    const-string v0, "\u652f\u4ed8\u5931\u8d25"

    goto :goto_5

    .line 141
    :sswitch_27
    const-string v0, "\u6b63\u5728\u5904\u7406\u4e2d"

    goto :goto_5

    .line 143
    :sswitch_2a
    const-string v0, "\u767b\u5f55\u9274\u6743\u5931\u8d25"

    goto :goto_5

    .line 145
    :sswitch_2d
    const-string v0, "\u7248\u672c\u65e0\u66f4\u65b0"

    goto :goto_5

    .line 147
    :sswitch_30
    const-string v0, "\u7b7e\u540d\u9519\u8bef"

    goto :goto_5

    .line 149
    :sswitch_33
    const-string v0, "\u7f3a\u5c11\u53c2\u6570"

    goto :goto_5

    .line 151
    :sswitch_36
    const-string v0, "\u53c2\u6570\u5f02\u5e38"

    goto :goto_5

    .line 153
    :sswitch_39
    const-string v0, "\u67e5\u8be2\u4f59\u989d\u5931\u8d25"

    goto :goto_5

    .line 155
    :sswitch_3c
    const-string v0, "\u67e5\u8be2\u4f59\u989d\u5931\u8d25"

    goto :goto_5

    .line 157
    :sswitch_3f
    const-string v0, "\u67e5\u8be2\u4f59\u989d\u7ed3\u679c\u672a\u77e5"

    goto :goto_5

    .line 159
    :sswitch_42
    const-string v0, "\u76f4\u63a5\u4ed8\u6b3e\u6210\u529f"

    goto :goto_5

    .line 161
    :sswitch_45
    const-string v0, "\u76f4\u63a5\u4ed8\u6b3e\u5931\u8d25"

    goto :goto_5

    .line 163
    :sswitch_48
    const-string v0, "\u76f4\u63a5\u4ed8\u6b3e\u7ed3\u679c\u672a\u77e5"

    goto :goto_5

    .line 165
    :sswitch_4b
    const-string v0, "\u67e5\u8be2\u8ba2\u5355\u6210\u529f"

    goto :goto_5

    .line 167
    :sswitch_4e
    const-string v0, "\u67e5\u8be2\u8ba2\u5355\u5931\u8d25"

    goto :goto_5

    .line 169
    :sswitch_51
    const-string v0, "\u67e5\u8be2\u8ba2\u5355\u7ed3\u679c\u672a\u77e5"

    goto :goto_5

    .line 115
    :sswitch_data_54
    .sparse-switch
        0x3e9 -> :sswitch_6
        0x3ea -> :sswitch_21
        0x3eb -> :sswitch_1e
        0x3ec -> :sswitch_9
        0x3ed -> :sswitch_c
        0x3ef -> :sswitch_2d
        0x3f2 -> :sswitch_24
        0x3f4 -> :sswitch_27
        0x44c -> :sswitch_24
        0x4b0 -> :sswitch_30
        0x4b1 -> :sswitch_33
        0x1388 -> :sswitch_f
        0x1389 -> :sswitch_12
        0x138a -> :sswitch_15
        0x138b -> :sswitch_36
        0x138c -> :sswitch_1b
        0x138d -> :sswitch_2a
        0x138e -> :sswitch_18
        0x15b3 -> :sswitch_24
        0x7530 -> :sswitch_39
        0x7531 -> :sswitch_3c
        0x7532 -> :sswitch_3f
        0x9c40 -> :sswitch_42
        0x9c41 -> :sswitch_45
        0x9c42 -> :sswitch_48
        0xc350 -> :sswitch_4b
        0xc351 -> :sswitch_4e
        0xc352 -> :sswitch_51
    .end sparse-switch
.end method

.method public static parse(Ljava/lang/String;)Lcom/nearme/platform/opensdk/pay/PayResponse;
    .registers 6

    .prologue
    .line 86
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 87
    :cond_e
    const/4 v0, 0x0

    .line 111
    :cond_f
    :goto_f
    return-object v0

    .line 89
    :cond_10
    new-instance v0, Lcom/nearme/platform/opensdk/pay/PayResponse;

    invoke-direct {v0}, Lcom/nearme/platform/opensdk/pay/PayResponse;-><init>()V

    .line 91
    :try_start_15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    const-string v2, "errCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mErrorCode:I

    .line 93
    iget v2, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mErrorCode:I

    invoke-static {v2}, Lcom/nearme/platform/opensdk/pay/PayResponse;->getMsg(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    .line 94
    const-string v2, "order"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 95
    const-string v2, "order"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mOder:Ljava/lang/String;

    .line 96
    const-string v2, "order"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " order:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mOder:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_50
    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 102
    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mRawMsg:Ljava/lang/String;

    .line 104
    :cond_60
    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_72

    iget-object v2, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;

    const-string v3, "\u672a\u77e5\u7ed3\u679c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 105
    :cond_72
    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nearme/platform/opensdk/pay/PayResponse;->mMsg:Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_7a} :catch_7b

    goto :goto_f

    .line 109
    :catch_7b
    move-exception v1

    const-class v1, Lcom/nearme/platform/opensdk/pay/PayResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parse error. response is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 98
    :cond_96
    :try_start_96
    const-string v2, "order"

    const-string v3, " no order"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9d} :catch_7b

    goto :goto_50
.end method
