.class public Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "StreamActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/stream/StreamActivity;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->g(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/activity/stream/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1436
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Exception;JILcom/facebook/katana/binding/FacebookStreamContainer;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "JI",
            "Lcom/facebook/katana/binding/FacebookStreamContainer;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1297
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->e(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/model/FacebookStreamType;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/activity/stream/StreamActivity;)J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-eqz v0, :cond_1

    .line 1327
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Lcom/facebook/katana/activity/stream/StreamActivity;Z)V

    .line 1304
    const/4 v0, 0x2

    if-ne p6, v0, :cond_2

    .line 1306
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->g(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/activity/stream/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(Z)V

    .line 1309
    :cond_2
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    .line 1310
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->i(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    .line 1312
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->g(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/activity/stream/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0, p7}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(Lcom/facebook/katana/binding/FacebookStreamContainer;)V

    .line 1314
    invoke-virtual {p7}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a()I

    move-result v0

    if-nez v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const v1, 0x7f0802d8

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1317
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 1318
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 1321
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const v2, 0x7f0b034a

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 1325
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Exception;[JILcom/facebook/katana/binding/FacebookStreamContainer;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "[JI",
            "Lcom/facebook/katana/binding/FacebookStreamContainer;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1244
    sget-object v0, Lcom/facebook/katana/activity/stream/StreamActivity$15;->a:[I

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->e(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/model/FacebookStreamType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookStreamType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0, v4}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Lcom/facebook/katana/activity/stream/StreamActivity;Z)V

    .line 1267
    const/4 v0, 0x2

    if-ne p5, v0, :cond_1

    .line 1269
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->g(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/activity/stream/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(Z)V

    .line 1272
    :cond_1
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_3

    .line 1273
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->h(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    .line 1275
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->g(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/activity/stream/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(Lcom/facebook/katana/binding/FacebookStreamContainer;)V

    .line 1278
    invoke-virtual {p6}, Lcom/facebook/katana/binding/FacebookStreamContainer;->a()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1279
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0, p6}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/activity/stream/StreamActivity;Lcom/facebook/katana/binding/FacebookStreamContainer;)Z

    .line 1288
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 1246
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->f(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->b()V

    .line 1247
    if-eqz p4, :cond_0

    goto :goto_0

    .line 1255
    :pswitch_2
    if-eqz p4, :cond_2

    aget-wide v0, p4, v4

    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/activity/stream/StreamActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1282
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const v2, 0x7f0b034a

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 1286
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final a(ILjava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1455
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const-string v0, "places"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1457
    if-ne p3, v2, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->e(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/model/FacebookStreamType;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/model/FacebookStreamType;->PLACE_ACTIVITY_STREAM:Lcom/facebook/katana/model/FacebookStreamType;

    if-ne v0, v1, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iput-boolean v2, v0, Lcom/facebook/katana/activity/stream/StreamActivity;->f:Z

    .line 1460
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/util/FBLocationManager;->a(Landroid/content/Context;Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;)V

    .line 1463
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->g(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/activity/stream/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1445
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1414
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->g(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/activity/stream/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 1417
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->g(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/activity/stream/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/stream/StreamAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 1426
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;ILcom/facebook/katana/model/FacebookPhoto;JJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v0, v0, Lcom/facebook/katana/activity/stream/StreamActivity;->o:Lcom/facebook/katana/model/FacebookCheckin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v0, v0, Lcom/facebook/katana/activity/stream/StreamActivity;->o:Lcom/facebook/katana/model/FacebookCheckin;

    iget-wide v0, v0, Lcom/facebook/katana/model/FacebookCheckin;->mCheckinId:J

    cmp-long v0, p7, v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/activity/stream/StreamActivity;)J

    move-result-wide v0

    cmp-long v0, p9, v0

    if-nez v0, :cond_2

    .line 1534
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    .line 1537
    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/model/FacebookPost;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->j(Lcom/facebook/katana/activity/stream/StreamActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->removeDialog(I)V

    .line 1361
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/activity/stream/StreamActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1362
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1

    .line 1363
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v1, v1, Lcom/facebook/katana/activity/stream/StreamActivity;->e:Lcom/facebook/katana/model/FacebookPlace;

    const/high16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/ApplicationUtils;->a(Landroid/content/Context;Lcom/facebook/katana/model/FacebookPlace;Ljava/lang/Integer;)Z

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1366
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const v2, 0x7f0b03df

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 1370
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/model/FacebookVideoUploadResponse;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    .line 1545
    return-void
.end method

.method public final d(I)V
    .locals 1
    .parameter

    .prologue
    .line 1486
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    .line 1504
    :cond_0
    return-void
.end method

.method public final g(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->removeDialog(I)V

    .line 1338
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/activity/stream/StreamActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1339
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const v1, 0x7f0802d1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1341
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->g(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/activity/stream/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/stream/StreamAdapter;->b()V

    .line 1349
    :goto_0
    return-void

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const v2, 0x7f0b0359

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 1347
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final h(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->removeDialog(I)V

    .line 1383
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Lcom/facebook/katana/activity/stream/StreamActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1384
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->g(Lcom/facebook/katana/activity/stream/StreamActivity;)Lcom/facebook/katana/activity/stream/StreamAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/stream/StreamAdapter;->b()V

    .line 1392
    :goto_0
    return-void

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const v2, 0x7f0b0360

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 1390
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final i(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1512
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->w()V

    .line 1514
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->v()V

    .line 1515
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/stream/StreamActivity;->b(Lcom/facebook/katana/activity/stream/StreamActivity;)V

    .line 1523
    :goto_0
    return-void

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const v2, 0x7f0b03df

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 1521
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$StreamAppSessionListener;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
