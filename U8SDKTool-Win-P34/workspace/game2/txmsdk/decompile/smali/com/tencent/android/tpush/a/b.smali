.class public Lcom/tencent/android/tpush/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/content/Context;Lcom/tencent/android/tpush/a/d;Z)Landroid/content/Intent;
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 171
    const/4 v0, 0x0

    .line 172
    iget v1, p1, Lcom/tencent/android/tpush/a/d;->a:I

    packed-switch v1, :pswitch_data_11c

    .line 248
    const-string v1, "TPush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672a\u77e5\u7684\u64cd\u4f5c\u7c7b\u578b:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/android/tpush/a/d;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_21
    const-string v1, "action_confirm"

    iget v2, p1, Lcom/tencent/android/tpush/a/d;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    :cond_28
    return-object v0

    .line 174
    :pswitch_29
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    iget-object v0, p1, Lcom/tencent/android/tpush/a/d;->b:Ljava/lang/String;

    .line 176
    invoke-static {v0}, Lcom/tencent/android/tpush/common/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 177
    invoke-static {p0}, Lcom/tencent/android/tpush/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_3c
    const/high16 v1, 0x20200000

    .line 181
    iget-object v3, p1, Lcom/tencent/android/tpush/a/d;->c:Lcom/tencent/android/tpush/a/e;

    if-eqz v3, :cond_48

    iget-object v3, p1, Lcom/tencent/android/tpush/a/d;->c:Lcom/tencent/android/tpush/a/e;

    iget v3, v3, Lcom/tencent/android/tpush/a/e;->a:I

    if-gtz v3, :cond_90

    .line 183
    :cond_48
    if-eqz p2, :cond_4c

    .line 184
    const/high16 v1, 0x10000000

    .line 186
    :cond_4c
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 188
    const/high16 v3, 0x4020000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    :goto_54
    const-string v3, "TPush"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifaction intent flag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ",activity for open:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "activity"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v0, "notificationActionType"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const-string v0, "action_type"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object v0, v2

    .line 202
    goto :goto_21

    .line 191
    :cond_90
    iget-object v1, p1, Lcom/tencent/android/tpush/a/d;->c:Lcom/tencent/android/tpush/a/e;

    iget v1, v1, Lcom/tencent/android/tpush/a/e;->a:I

    .line 192
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_54

    .line 209
    :pswitch_98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    const-string v1, "activity"

    iget-object v2, p1, Lcom/tencent/android/tpush/a/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v1, "action_type"

    iget v2, p1, Lcom/tencent/android/tpush/a/d;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string v1, "notificationActionType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 219
    :pswitch_be
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    const-string v1, "activity"

    iget-object v2, p1, Lcom/tencent/android/tpush/a/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "action_type"

    iget v2, p1, Lcom/tencent/android/tpush/a/d;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    const-string v1, "notificationActionType"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 233
    :pswitch_e4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.INTERNAL_PUSH_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    iget-object v1, p1, Lcom/tencent/android/tpush/a/d;->h:Ljava/lang/String;

    .line 235
    invoke-static {v1}, Lcom/tencent/android/tpush/common/p;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 238
    const-string v2, "action_type"

    iget v3, p1, Lcom/tencent/android/tpush/a/d;->a:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const-string v2, "packageDownloadUrl"

    iget-object v3, p1, Lcom/tencent/android/tpush/a/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v2, "activity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v1, "notificationActionType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/android/tpush/XGPushActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_21

    .line 172
    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_98
        :pswitch_be
        :pswitch_e4
    .end packed-switch
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .registers 4

    .prologue
    .line 76
    const-class v1, Lcom/tencent/android/tpush/a/b;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;

    invoke-direct {v0}, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;-><init>()V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;->setFlags(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 108
    if-nez p0, :cond_4

    .line 140
    :cond_3
    :goto_3
    return-object v0

    .line 112
    :cond_4
    invoke-static {p1}, Lcom/tencent/android/tpush/a/b;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {p0, v1, v0}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_65

    .line 116
    :try_start_e
    const-string v2, "TPush"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get Notification builder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    const-string v1, "basic"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 121
    new-instance v1, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;

    invoke-direct {v1}, Lcom/tencent/android/tpush/XGBasicPushNotificationBuilder;-><init>()V
    :try_end_38
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_38} :catch_45

    .line 122
    :try_start_38
    const-string v0, "basic"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_3d} :catch_7e

    move-result-object v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 132
    :goto_41
    :try_start_41
    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->decode(Ljava/lang/String;)V
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_3

    .line 133
    :catch_45
    move-exception v1

    .line 134
    :goto_46
    const-string v2, "TPush"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 124
    :cond_4e
    :try_start_4e
    const-string v1, "custom"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    new-instance v1, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    invoke-direct {v1}, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;-><init>()V
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_4e .. :try_end_5b} :catch_45

    .line 127
    :try_start_5b
    const-string v0, "custom"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_60} :catch_83

    move-result-object v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_41

    .line 137
    :cond_65
    const-string v1, "TPush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushNotificationBuilder not found :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 133
    :catch_7e
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_46

    :catch_83
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_46
.end method

.method private static a(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TPUSH_NOTIF_BUILDID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;ILcom/tencent/android/tpush/XGPushNotificationBuilder;)V
    .registers 7

    .prologue
    .line 89
    invoke-static {p1}, Lcom/tencent/android/tpush/a/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 91
    invoke-virtual {p2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->encode(Lorg/json/JSONObject;)V

    .line 92
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 93
    invoke-virtual {p2}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/tencent/android/tpush/common/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/android/tpush/a/h;)V
    .registers 15
    .annotation build Lcom/jg/JgMethodChecked;
        author = 0x1
        fComment = "\u786e\u8ba4\u5df2\u8fdb\u884c\u5b89\u5168\u6821\u9a8c"
        lastDate = "20150316"
        reviewer = 0x3
        vComment = {
            .enum Lcom/jg/EType;->RECEIVERCHECK:Lcom/jg/EType;,
            .enum Lcom/jg/EType;->INTENTCHECK:Lcom/jg/EType;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 259
    const-string v0, "TPush"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@openActivityOrUrl:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->g()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->h()Lcom/tencent/android/tpush/a/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/a/c;

    .line 263
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->l()Lcom/tencent/android/tpush/a/d;

    move-result-object v6

    .line 265
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->g()I

    move-result v2

    invoke-static {p0, v2}, Lcom/tencent/android/tpush/a/b;->a(Landroid/content/Context;I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    move-result-object v2

    .line 267
    if-eqz v2, :cond_3a

    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->s()I

    move-result v5

    if-ne v5, v3, :cond_112

    .line 269
    :cond_3a
    if-nez v2, :cond_40

    .line 270
    invoke-static {p0}, Lcom/tencent/android/tpush/XGPushManager;->getDefaultNotificationBuilder(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    move-result-object v2

    .line 272
    :cond_40
    if-nez v2, :cond_46

    .line 273
    invoke-static {p0}, Lcom/tencent/android/tpush/a/b;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    move-result-object v2

    .line 275
    :cond_46
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->j()I

    move-result v5

    if-eqz v5, :cond_1c8

    .line 276
    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setFlags(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 280
    :goto_51
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->h()I

    move-result v5

    if-eqz v5, :cond_1d9

    .line 281
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->o()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1d4

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->o()Ljava/lang/String;

    move-result-object v7

    const-string v8, "raw"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 285
    if-lez v5, :cond_1cf

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.resource://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 289
    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSound(Landroid/net/Uri;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 299
    :goto_9d
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->i()I

    move-result v5

    if-eqz v5, :cond_1de

    .line 300
    invoke-virtual {v2, v12}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setDefaults(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 304
    :goto_a6
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->n()I

    move-result v5

    if-eqz v5, :cond_af

    .line 306
    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setFlags(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 308
    :cond_af
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->q()Ljava/lang/String;

    move-result-object v5

    .line 309
    if-eqz v5, :cond_1f2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1f2

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 312
    if-lez v5, :cond_1e3

    .line 315
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 324
    :goto_d2
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->r()I

    move-result v5

    .line 325
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->p()Ljava/lang/String;

    move-result-object v7

    .line 327
    instance-of v8, v2, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    if-eqz v8, :cond_e5

    move-object v1, v2

    .line 328
    check-cast v1, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    invoke-virtual {v1}, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;->getLayoutIconId()Ljava/lang/Integer;

    move-result-object v1

    .line 331
    :cond_e5
    if-eqz v7, :cond_219

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_219

    .line 332
    if-gtz v5, :cond_214

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v8, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 335
    if-lez v5, :cond_201

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 338
    if-eqz v1, :cond_112

    move-object v1, v2

    .line 339
    check-cast v1, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    invoke-virtual {v1, v5}, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;->setLayoutIconDrawableId(I)Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    .line 357
    :cond_112
    :goto_112
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->m()I

    move-result v1

    if-lez v1, :cond_123

    .line 358
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 360
    :cond_123
    invoke-virtual {v2}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getSmallIcon()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_153

    invoke-virtual {v2}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_153

    invoke-virtual {v2}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->getIcon()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_153

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSmallIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 363
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 369
    :cond_153
    const-string v1, "TPush"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifaction icon="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->m()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",title="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ",content="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , BuilderId = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->g()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setTitle(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setTickerText(Ljava/lang/CharSequence;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 377
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->f()Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-static {v1}, Lcom/tencent/android/tpush/common/p;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3eb

    .line 379
    const-string v5, "{}"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3eb

    move v1, v3

    .line 384
    :goto_1ba
    invoke-static {p0, v6, v1}, Lcom/tencent/android/tpush/a/b;->a(Landroid/content/Context;Lcom/tencent/android/tpush/a/d;Z)Landroid/content/Intent;

    move-result-object v7

    .line 385
    if-nez v7, :cond_22c

    .line 386
    const-string v0, "TPush"

    const-string v1, "intent is null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :goto_1c7
    return-void

    .line 278
    :cond_1c8
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setFlags(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_51

    .line 291
    :cond_1cf
    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setDefaults(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_9d

    .line 294
    :cond_1d4
    invoke-virtual {v2, v3}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setDefaults(I)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_9d

    .line 297
    :cond_1d9
    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setSound(Landroid/net/Uri;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_9d

    .line 302
    :cond_1de
    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setVibrate([J)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_a6

    .line 318
    :cond_1e3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_d2

    .line 322
    :cond_1f2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setIcon(Ljava/lang/Integer;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_d2

    .line 343
    :cond_201
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_112

    .line 348
    :cond_214
    invoke-static {v7, v2, p0, v1}, Lcom/tencent/android/tpush/a/b;->a(Ljava/lang/String;Lcom/tencent/android/tpush/XGPushNotificationBuilder;Landroid/content/Context;Ljava/lang/Integer;)V

    goto/16 :goto_112

    .line 351
    :cond_219
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    goto/16 :goto_112

    .line 389
    :cond_22c
    const-string v5, "TPush"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intent is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    if-eqz v1, :cond_253

    .line 392
    const-string v1, "custom_content"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    :cond_253
    const-string v1, "tag.tpush.MSG"

    const-string v3, "true"

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v1, "title"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v1, "content"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_287

    .line 403
    const-string v1, "custom_content"

    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    :cond_287
    const-string v1, "msgId"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->b()J

    move-result-wide v8

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 407
    const-string v1, "accId"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->c()J

    move-result-wide v8

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 408
    const-string v1, "busiMsgId"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->d()J

    move-result-wide v8

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 409
    const-string v1, "timestamps"

    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->e()J

    move-result-wide v8

    invoke-virtual {v7, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    sub-long/2addr v8, v10

    .line 414
    const-string v1, "protect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 419
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->k()I

    move-result v3

    .line 420
    if-gtz v3, :cond_2e4

    .line 421
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->g()I

    move-result v3

    invoke-static {p0, v3}, Lcom/tencent/android/tpush/a/b;->b(Landroid/content/Context;I)I

    move-result v3

    .line 424
    :cond_2e4
    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->k()I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_2ee

    .line 425
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 427
    :cond_2ee
    const-string v5, "notifaction_id"

    invoke-virtual {v7, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    const/high16 v5, 0x8000000

    .line 430
    iget-object v8, v6, Lcom/tencent/android/tpush/a/d;->c:Lcom/tencent/android/tpush/a/e;

    if-eqz v8, :cond_303

    iget-object v8, v6, Lcom/tencent/android/tpush/a/d;->c:Lcom/tencent/android/tpush/a/e;

    iget v8, v8, Lcom/tencent/android/tpush/a/e;->b:I

    if-lez v8, :cond_303

    .line 432
    iget-object v5, v6, Lcom/tencent/android/tpush/a/d;->c:Lcom/tencent/android/tpush/a/e;

    iget v5, v5, Lcom/tencent/android/tpush/a/e;->b:I

    .line 435
    :cond_303
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.tencent.android.tpush.action.PUSH_CANCELLED.RESULT"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    const-string v8, "packName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v8, "action"

    invoke-virtual {v6, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    invoke-virtual {v6, v7}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3, v7, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 445
    invoke-virtual {v2, v8}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 446
    const-string v9, "TPush"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Notification @ PendingIntent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ",pendintIntentFlag:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ",intent flag:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v2, p0}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->buildNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    .line 450
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3, v6, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 453
    invoke-static {}, Lcom/tencent/android/tpush/XGPushManager;->getNotifactionCallback()Lcom/tencent/android/tpush/XGPushNotifactionCallback;

    move-result-object v5

    .line 455
    if-nez v5, :cond_3ca

    .line 456
    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 463
    :goto_36d
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifactionCallback="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", Notification @"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",pushMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.tencent.android.tpush.action.FEEDBACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 468
    const-string v1, "TPUSH.ERRORCODE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-virtual {v0, v7}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 471
    const-string v1, "TPUSH.FEEDBACK"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 473
    const-string v1, "notifaction_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    const-string v1, "TPush"

    const-string v2, "send FEEDBACK_NOTIFACTION_SHOWED"

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/logging/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1c7

    .line 458
    :cond_3ca
    const-string v1, "TPush"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call notifactionCallback:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    new-instance v1, Lcom/tencent/android/tpush/XGNotifaction;

    invoke-direct {v1, p0, v3, v2, v0}, Lcom/tencent/android/tpush/XGNotifaction;-><init>(Landroid/content/Context;ILandroid/app/Notification;Lcom/tencent/android/tpush/a/c;)V

    .line 461
    invoke-interface {v5, v1}, Lcom/tencent/android/tpush/XGPushNotifactionCallback;->handleNotify(Lcom/tencent/android/tpush/XGNotifaction;)V

    goto :goto_36d

    :cond_3eb
    move v1, v4

    goto/16 :goto_1ba
.end method

.method private static a(Ljava/lang/String;Lcom/tencent/android/tpush/XGPushNotificationBuilder;Landroid/content/Context;Ljava/lang/Integer;)V
    .registers 14

    .prologue
    const/16 v3, 0xfa0

    const/16 v2, 0xbb8

    const/4 v1, 0x0

    .line 581
    .line 583
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 584
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 585
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 586
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 587
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 588
    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 589
    const-wide/16 v2, 0xfa0

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 591
    const/4 v0, 0x0

    .line 592
    const/4 v2, 0x0

    .line 593
    const/4 v3, 0x0

    .line 595
    :try_start_23
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 596
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_31} :catch_15f
    .catchall {:try_start_23 .. :try_end_31} :catchall_123

    .line 597
    :try_start_31
    const-string v7, "X-Online-Host"

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v7, "http.socket.timeout"

    const/16 v8, 0x4e20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 600
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v4

    const-string v7, "http.connection.timeout"

    const/16 v8, 0x4e20

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 602
    invoke-interface {v6, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 603
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 604
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_9c

    .line 605
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v4, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_79} :catch_165
    .catchall {:try_start_31 .. :try_end_79} :catchall_14a

    .line 630
    if-eqz v1, :cond_7e

    .line 631
    :try_start_7b
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 633
    :cond_7e
    if-eqz v1, :cond_83

    .line 634
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 637
    :cond_83
    if-eqz v1, :cond_88

    .line 638
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 640
    :cond_88
    if-eqz v5, :cond_8d

    .line 641
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 643
    :cond_8d
    if-eqz v6, :cond_96

    .line 644
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_96} :catch_97

    .line 650
    :cond_96
    :goto_96
    return-void

    .line 646
    :catch_97
    move-exception v0

    .line 647
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_96

    .line 609
    :cond_9c
    :try_start_9c
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9f} :catch_165
    .catchall {:try_start_9c .. :try_end_9f} :catchall_14a

    move-result-object v2

    .line 610
    if-eqz v2, :cond_17b

    .line 611
    :try_start_a2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_16b
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_14e

    move-result-object v4

    .line 612
    :try_start_a6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ab} :catch_173
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_153

    .line 613
    const/16 v0, 0x400

    :try_start_ad
    new-array v0, v0, [B

    .line 615
    :goto_af
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_e6

    .line 616
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ba} :catch_bb
    .catchall {:try_start_ad .. :try_end_ba} :catchall_157

    goto :goto_af

    .line 626
    :catch_bb
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 627
    :goto_c0
    :try_start_c0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_15a

    .line 630
    if-eqz v1, :cond_c8

    .line 631
    :try_start_c5
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 633
    :cond_c8
    if-eqz v3, :cond_cd

    .line 634
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 637
    :cond_cd
    if-eqz v2, :cond_d2

    .line 638
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 640
    :cond_d2
    if-eqz v4, :cond_d7

    .line 641
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 643
    :cond_d7
    if-eqz v6, :cond_96

    .line 644
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_e0} :catch_e1

    goto :goto_96

    .line 646
    :catch_e1
    move-exception v0

    .line 647
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_96

    .line 618
    :cond_e6
    :try_start_e6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v0, v1, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 620
    invoke-virtual {p1, v0}, Lcom/tencent/android/tpush/XGPushNotificationBuilder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGPushNotificationBuilder;

    .line 621
    if-eqz p3, :cond_fe

    .line 622
    check-cast p1, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;

    invoke-virtual {p1, v0}, Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;->setLayoutIconDrawableBmp(Landroid/graphics/Bitmap;)Lcom/tencent/android/tpush/XGCustomPushNotificationBuilder;
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_fe} :catch_bb
    .catchall {:try_start_e6 .. :try_end_fe} :catchall_157

    .line 630
    :cond_fe
    :goto_fe
    if-eqz v2, :cond_103

    .line 631
    :try_start_100
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 633
    :cond_103
    if-eqz v4, :cond_108

    .line 634
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 637
    :cond_108
    if-eqz v3, :cond_10d

    .line 638
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 640
    :cond_10d
    if-eqz v5, :cond_112

    .line 641
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 643
    :cond_112
    if-eqz v6, :cond_96

    .line 644
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_11b} :catch_11d

    goto/16 :goto_96

    .line 646
    :catch_11d
    move-exception v0

    .line 647
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_96

    .line 629
    :catchall_123
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    .line 630
    :goto_127
    if-eqz v1, :cond_12c

    .line 631
    :try_start_129
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 633
    :cond_12c
    if-eqz v4, :cond_131

    .line 634
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 637
    :cond_131
    if-eqz v3, :cond_136

    .line 638
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 640
    :cond_136
    if-eqz v5, :cond_13b

    .line 641
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 643
    :cond_13b
    if-eqz v6, :cond_144

    .line 644
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_144} :catch_145

    .line 648
    :cond_144
    :goto_144
    throw v0

    .line 646
    :catch_145
    move-exception v1

    .line 647
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_144

    .line 629
    :catchall_14a
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    goto :goto_127

    :catchall_14e
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v1, v2

    goto :goto_127

    :catchall_153
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_127

    :catchall_157
    move-exception v0

    move-object v1, v2

    goto :goto_127

    :catchall_15a
    move-exception v0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    goto :goto_127

    .line 626
    :catch_15f
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_c0

    :catch_165
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v5

    goto/16 :goto_c0

    :catch_16b
    move-exception v0

    move-object v3, v1

    move-object v4, v5

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_c0

    :catch_173
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_c0

    :cond_17b
    move-object v3, v1

    move-object v4, v1

    goto :goto_fe
.end method

.method private static declared-synchronized b(Landroid/content/Context;I)I
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 703
    const-class v2, Lcom/tencent/android/tpush/a/b;

    monitor-enter v2

    .line 705
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_XINGE_NOTIF_NUMBER_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 706
    const/4 v0, 0x0

    invoke-static {p0, v3, v0}, Lcom/tencent/android/tpush/common/m;->a(Landroid/content/Context;Ljava/lang/String;I)I
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_1f} :catch_2d
    .catchall {:try_start_4 .. :try_end_1f} :catchall_39

    move-result v0

    .line 707
    const v4, 0x7ffffffe

    if-lt v0, v4, :cond_26

    move v0, v1

    .line 710
    :cond_26
    add-int/lit8 v1, v0, 0x1

    :try_start_28
    invoke-static {p0, v3, v1}, Lcom/tencent/android/tpush/common/m;->b(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2b} :catch_3c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_39

    .line 714
    :goto_2b
    monitor-exit v2

    return v0

    .line 711
    :catch_2d
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 712
    :goto_31
    :try_start_31
    const-string v3, "TPush"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_39

    goto :goto_2b

    .line 703
    :catchall_39
    move-exception v0

    monitor-exit v2

    throw v0

    .line 711
    :catch_3c
    move-exception v1

    goto :goto_31
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 152
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 158
    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 159
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 160
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_22

    .line 161
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_36} :catch_37

    .line 166
    :goto_36
    return-object v0

    .line 163
    :catch_37
    move-exception v0

    .line 164
    const-string v2, "TPush"

    const-string v3, "\u67e5\u627e\u4e3bActivity\u51fa\u9519"

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3f
    move-object v0, v1

    .line 166
    goto :goto_36
.end method

.method public static b(Landroid/content/Context;Lcom/tencent/android/tpush/a/h;)V
    .registers 5

    .prologue
    .line 680
    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->h()Lcom/tencent/android/tpush/a/a;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/android/tpush/a/c;

    if-eqz v0, :cond_39

    .line 681
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNotification @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->tf(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {p1}, Lcom/tencent/android/tpush/a/h;->h()Lcom/tencent/android/tpush/a/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/android/tpush/a/c;

    .line 685
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/tencent/android/tpush/a/c;->l()Lcom/tencent/android/tpush/a/d;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 686
    :cond_32
    const-string v0, "TPush"

    const-string v1, "showNotification holder == null || holder.getAction() == null"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/logging/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_39
    :goto_39
    return-void

    .line 690
    :cond_3a
    invoke-static {p0, p1}, Lcom/tencent/android/tpush/a/b;->a(Landroid/content/Context;Lcom/tencent/android/tpush/a/h;)V

    goto :goto_39
.end method
