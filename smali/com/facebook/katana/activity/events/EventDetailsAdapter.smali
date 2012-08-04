.class public Lcom/facebook/katana/activity/events/EventDetailsAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventDetailsAdapter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lcom/facebook/katana/binding/StreamPhotosCache;

.field private d:J

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/database/Cursor;

.field private g:Landroid/widget/ImageView;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;Landroid/database/Cursor;JJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a:Landroid/content/Context;

    .line 154
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->b:Landroid/view/LayoutInflater;

    .line 155
    iput-object p2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->c:Lcom/facebook/katana/binding/StreamPhotosCache;

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->e:Ljava/util/List;

    .line 157
    iput-object p3, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    .line 158
    iput-wide p4, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->d:J

    .line 159
    iput-wide p6, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->k:J

    .line 160
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 164
    if-nez v0, :cond_0

    .line 165
    const-string v0, ""

    .line 167
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->d:J

    return-wide v0
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 365
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->h:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 368
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    iput p2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->j:I

    .line 147
    check-cast p1, Landroid/widget/TextView;

    .line 148
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->i:J

    return-wide v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->j:I

    return v0
.end method

.method public final d()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 172
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    const-string v2, "creator_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->i:J

    .line 176
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->e:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;

    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b01ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    const-string v5, "host"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v7, v2, v3, v6}, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    const-string v2, "location"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->e:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;

    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a:Landroid/content/Context;

    const v4, 0x7f0b01ed

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3, v0, v7}, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    const-string v2, "venue"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/model/FacebookEventFull;->a([B)Ljava/util/Map;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "street"

    invoke-static {v0, v2}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    const-string v2, "city"

    invoke-static {v0, v2}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    const-string v3, "state"

    invoke-static {v0, v3}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 199
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 200
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 204
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_4
    const-string v2, "country"

    invoke-static {v0, v2}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 212
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 218
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->e:Ljava/util/List;

    new-instance v2, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a:Landroid/content/Context;

    const v5, 0x7f0b01ea

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    const-string v2, "hide_guest_list"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    const-string v2, "creator_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 231
    :cond_8
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->e:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a:Landroid/content/Context;

    const v4, 0x7f0b01eb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a:Landroid/content/Context;

    const v5, 0x7f0b01ee

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_9
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->notifyDataSetChanged()V

    .line 236
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v0, "EventDetails Activity"

    const-string v1, "Deserialization failed for event."

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final e()Landroid/view/View;
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const v9, 0x7f02015c

    const/4 v8, -0x1

    .line 279
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 283
    const v0, 0x7f0800b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 284
    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    const-string v4, "event_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-static {}, Lcom/facebook/katana/util/TimeUtils;->a()I

    move-result v0

    .line 293
    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    const-string v4, "start_time"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    iget-object v5, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a:Landroid/content/Context;

    mul-long/2addr v2, v10

    int-to-long v6, v0

    add-long/2addr v2, v6

    invoke-static {v5, v8, v2, v3}, Lcom/facebook/katana/util/TimeUtils;->a(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    const-string v5, "end_time"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 302
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v5, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a:Landroid/content/Context;

    mul-long/2addr v2, v10

    int-to-long v6, v0

    add-long/2addr v2, v6

    invoke-static {v5, v8, v2, v3}, Lcom/facebook/katana/util/TimeUtils;->a(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const v0, 0x7f0800b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 307
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    const v0, 0x7f0800b5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->g:Landroid/widget/ImageView;

    .line 311
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    const-string v3, "medium_image_url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->h:Ljava/lang/String;

    .line 315
    if-eqz v0, :cond_1

    .line 316
    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->c:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lcom/facebook/katana/binding/StreamPhotosCache;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_0

    .line 319
    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 327
    :goto_0
    return-object v1

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final f()Landroid/view/View;
    .locals 5

    .prologue
    .line 332
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 334
    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    const-string v4, "rsvp_status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->a(Landroid/view/View;I)V

    .line 336
    return-object v0
.end method

.method public final g()Landroid/view/View;
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 385
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;

    .line 247
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f03002d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 250
    const v1, 0x7f0200d5

    .line 251
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 252
    const v1, 0x7f0200d3

    .line 259
    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 261
    const v1, 0x7f0800ba

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const v1, 0x7f0800c3

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-object v2

    .line 253
    :cond_1
    if-nez p1, :cond_2

    .line 254
    const v1, 0x7f0200d6

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_0

    .line 256
    const v1, 0x7f0200d4

    goto :goto_0
.end method

.method public final h()Landroid/view/View;
    .locals 5

    .prologue
    .line 346
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 349
    const v0, 0x7f0800b3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 351
    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    const-string v4, "description"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 354
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 355
    :cond_0
    const v0, 0x7f0800b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :goto_0
    return-object v1

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->f:Landroid/database/Cursor;

    const-string v4, "description"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventDetailsAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventDetailsAdapter$Item;->d()Z

    move-result v0

    return v0
.end method
