.class Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VaultSyncStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/media/VaultSyncStatusActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    const v0, 0x7f030115

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 79
    iput-object p2, p0, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter;->a:Landroid/content/Context;

    .line 80
    iput-object p3, p0, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter;->b:Ljava/util/List;

    .line 81
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 97
    packed-switch p0, :pswitch_data_0

    .line 113
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 99
    :pswitch_0
    const-string v0, "UPLOADED_LOW_RES"

    goto :goto_0

    .line 101
    :pswitch_1
    const-string v0, "UPLOADED_HIGH_RES"

    goto :goto_0

    .line 103
    :pswitch_2
    const-string v0, "UPLOADING_LOW_RES"

    goto :goto_0

    .line 105
    :pswitch_3
    const-string v0, "UPLOADING_HIGH_RES"

    goto :goto_0

    .line 107
    :pswitch_4
    const-string v0, "WAITING_TO_UPLOAD"

    goto :goto_0

    .line 109
    :pswitch_5
    const-string v0, "SKIP_UPLOAD"

    goto :goto_0

    .line 111
    :pswitch_6
    const-string v0, "FAILED"

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static b(I)I
    .locals 1
    .parameter

    .prologue
    .line 119
    packed-switch p0, :pswitch_data_0

    .line 133
    const/high16 v0, -0x100

    :goto_0
    return v0

    .line 122
    :pswitch_0
    const v0, -0xff0100

    goto :goto_0

    .line 125
    :pswitch_1
    const v0, -0xffff01

    goto :goto_0

    .line 127
    :pswitch_2
    const/16 v0, -0x100

    goto :goto_0

    .line 129
    :pswitch_3
    const v0, -0x777778

    goto :goto_0

    .line 131
    :pswitch_4
    const/high16 v0, -0x1

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 141
    .line 142
    if-nez p2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 145
    const v1, 0x7f030115

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 150
    :goto_0
    const v0, 0x7f0800be

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    const v1, 0x7f080302

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 152
    const v2, 0x7f080303

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 153
    const v3, 0x7f080079

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 155
    iget-object v4, p0, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;

    .line 156
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v5

    iget-object v6, v4, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;->a:Lcom/facebook/katana/model/MediaItem;

    invoke-virtual {v6}, Lcom/facebook/katana/model/MediaItem;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 159
    const-string v6, "%s\n %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v8

    iget-object v5, v4, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;->a:Lcom/facebook/katana/model/MediaItem;

    invoke-virtual {v5}, Lcom/facebook/katana/model/MediaItem;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v1, v4, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;->b:Lcom/facebook/katana/provider/VaultImageProviderRow;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, v4, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;->b:Lcom/facebook/katana/provider/VaultImageProviderRow;

    .line 163
    iget v5, v1, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    invoke-static {v5}, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter;->b(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 164
    iget v5, v1, Lcom/facebook/katana/provider/VaultImageProviderRow;->f:I

    invoke-static {v5}, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const-string v0, "fbid: %d, failure count: %d"

    new-array v5, v10, [Ljava/lang/Object;

    iget-wide v6, v1, Lcom/facebook/katana/provider/VaultImageProviderRow;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    iget v1, v1, Lcom/facebook/katana/provider/VaultImageProviderRow;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_1
    :try_start_0
    new-instance v0, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter$LoadPhotoTask;

    invoke-direct {v0, p0, v3}, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter$LoadPhotoTask;-><init>(Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter;Landroid/widget/ImageView;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/katana/model/MediaItem;

    const/4 v2, 0x0

    iget-object v3, v4, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;->a:Lcom/facebook/katana/model/MediaItem;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncStatusAdapter$LoadPhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_2
    return-object p2

    .line 147
    :cond_0
    const-string v0, "alexli"

    const-string v1, "converting a view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 168
    :cond_1
    const-string v1, "NOT IN VAULT DB"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 182
    :catch_0
    move-exception v0

    const-string v0, "VaultSyncStatusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to load bitmap for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/facebook/katana/activity/media/VaultSyncStatusActivity$VaultSyncInfo;->a:Lcom/facebook/katana/model/MediaItem;

    invoke-virtual {v2}, Lcom/facebook/katana/model/MediaItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method
