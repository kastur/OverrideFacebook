.class public Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventBirthdaysAdapter.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/LayoutInflater;

.field private final c:Lcom/facebook/katana/binding/ProfileImagesCache;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/ViewHolder",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/binding/ProfileImagesCache;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->a:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->d:Ljava/util/List;

    .line 143
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->b:Landroid/view/LayoutInflater;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->e:Ljava/util/List;

    .line 145
    iput-object p3, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->f:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->a()V

    .line 147
    return-void
.end method

.method private a()V
    .locals 25

    .prologue
    .line 163
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->a:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    sget-object v4, Lcom/facebook/katana/provider/ConnectionsProvider;->g:Landroid/net/Uri;

    sget-object v5, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$BirthdaysQuery;->a:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->f:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 168
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 169
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 171
    if-lez v3, :cond_1

    .line 172
    const-string v4, "birthday_month"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 174
    const-string v4, "normalized_birthday_day"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 176
    const-string v4, "user_id"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 178
    const-string v4, "display_name"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 180
    const-string v4, "birthday_year"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 182
    const-string v4, "user_image_url"

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move v14, v3

    .line 184
    :goto_0
    if-lez v14, :cond_1

    .line 185
    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 186
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 188
    add-int/lit8 v3, v7, -0x1

    const/4 v4, 0x0

    invoke-static {v3, v8, v4}, Lcom/facebook/katana/util/TimeUtils;->a(IIZ)J

    move-result-wide v11

    .line 189
    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v11

    invoke-static {v3, v4}, Lcom/facebook/katana/util/TimeUtils;->a(J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 190
    add-int/lit8 v3, v7, -0x1

    const/4 v4, 0x1

    invoke-static {v3, v8, v4}, Lcom/facebook/katana/util/TimeUtils;->a(IIZ)J

    move-result-wide v11

    .line 192
    :cond_0
    new-instance v3, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->a:Landroid/content/Context;

    const/16 v22, 0x64

    const-wide/16 v23, 0x3e8

    mul-long v23, v23, v11

    move/from16 v0, v22

    move-wide/from16 v1, v23

    invoke-static {v13, v0, v1, v2}, Lcom/facebook/katana/util/TimeUtils;->a(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v3 .. v13}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;-><init>(JLjava/lang/String;IIILjava/lang/String;JLjava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v3, v14, -0x1

    .line 205
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move v14, v3

    .line 206
    goto :goto_0

    .line 210
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->e:Ljava/util/List;

    new-instance v4, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$byTime;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$byTime;-><init>(Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 211
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 5
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ViewHolder;

    .line 313
    invoke-virtual {v0}, Lcom/facebook/katana/ViewHolder;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 314
    if-eqz v1, :cond_0

    iget-wide v3, p1, Lcom/facebook/katana/binding/ProfileImage;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/facebook/katana/binding/ProfileImage;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 318
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 303
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const v8, 0x7f02018e

    const/4 v7, 0x0

    .line 220
    iget-object v0, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;

    .line 223
    if-nez p2, :cond_0

    .line 224
    iget-object v1, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->b:Landroid/view/LayoutInflater;

    const v3, 0x7f03002e

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 225
    new-instance v1, Lcom/facebook/katana/ViewHolder;

    const v3, 0x7f0800b5

    invoke-direct {v1, p2, v3}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    .line 227
    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    :cond_0
    const v1, 0x7f0800c4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 234
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->f()Ljava/lang/String;

    move-result-object v3

    .line 237
    if-lez p1, :cond_1

    .line 238
    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->e:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->f()Ljava/lang/String;

    move-result-object v2

    .line 240
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 241
    :cond_2
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/ViewHolder;

    .line 248
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/katana/ViewHolder;->a(Ljava/lang/Object;)V

    .line 250
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->c()Ljava/lang/String;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_5

    .line 253
    iget-object v3, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->c:Lcom/facebook/katana/binding/ProfileImagesCache;

    iget-object v4, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->d()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 254
    if-eqz v2, :cond_4

    .line 255
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 263
    :goto_1
    const v1, 0x7f0800b7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 264
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    const v1, 0x7f0800c5

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 268
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->b()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 269
    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->b()I

    move-result v2

    invoke-virtual {v0}, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter$Item;->e()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/katana/util/TimeUtils;->a(IJ)I

    move-result v0

    .line 271
    iget-object v2, p0, Lcom/facebook/katana/activity/events/EventBirthdaysAdapter;->a:Landroid/content/Context;

    const v3, 0x7f0b0199

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :goto_2
    return-object p2

    .line 244
    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 257
    :cond_4
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 260
    :cond_5
    iget-object v1, v1, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 273
    :cond_6
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
