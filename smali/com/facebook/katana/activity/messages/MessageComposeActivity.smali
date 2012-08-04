.class public Lcom/facebook/katana/activity/messages/MessageComposeActivity;
.super Lcom/facebook/katana/activity/BaseFacebookActivity;
.source "MessageComposeActivity.java"


# instance fields
.field private e:Lcom/facebook/katana/binding/AppSession;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/binding/AppSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/katana/DropdownFriendsAdapter;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/view/View$OnClickListener;

.field private final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
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

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->j:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->k:Ljava/util/List;

    .line 472
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)Lcom/facebook/katana/DropdownFriendsAdapter;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->g:Lcom/facebook/katana/DropdownFriendsAdapter;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/messages/MessageComposeActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/messages/MessageComposeActivity;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/messages/MessageComposeActivity;Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    return-void
.end method

.method private a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 5
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ViewHolder;

    .line 459
    invoke-virtual {v0}, Lcom/facebook/katana/ViewHolder;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 460
    if-eqz v1, :cond_0

    .line 461
    iget-wide v3, p1, Lcom/facebook/katana/binding/ProfileImage;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/facebook/katana/binding/ProfileImage;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 467
    :cond_1
    return-void
.end method

.method private a(Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f02018e

    .line 351
    iget-wide v1, p1, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    .line 354
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 355
    iget-wide v4, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 365
    const v3, 0x7f03010f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 366
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 369
    new-instance v0, Lcom/facebook/katana/ViewHolder;

    const v4, 0x7f080170

    invoke-direct {v0, v3, v4}, Lcom/facebook/katana/ViewHolder;-><init>(Landroid/view/View;I)V

    .line 370
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/katana/ViewHolder;->a(Ljava/lang/Object;)V

    .line 371
    iget-object v4, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->k:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v4, p1, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    .line 375
    if-eqz v4, :cond_3

    .line 376
    iget-object v5, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v5}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v5

    invoke-virtual {v5, p0, v1, v2, v4}, Lcom/facebook/katana/binding/ProfileImagesCache;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 377
    if-eqz v1, :cond_2

    .line 378
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    :goto_1
    iget-object v0, p1, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    .line 388
    if-nez v0, :cond_4

    .line 389
    const v0, 0x7f0b01f5

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 391
    :goto_2
    const v0, 0x7f080082

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    const v0, 0x7f0802f0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 399
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->h:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 383
    :cond_3
    iget-object v0, v0, Lcom/facebook/katana/ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->f()V

    return-void
.end method

.method static synthetic b(Lcom/facebook/katana/activity/messages/MessageComposeActivity;Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->b(Lcom/facebook/katana/model/FacebookProfile;)V

    return-void
.end method

.method private b(Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 5
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->h:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 411
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ViewHolder;

    .line 415
    invoke-virtual {v0}, Lcom/facebook/katana/ViewHolder;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 416
    if-eqz v1, :cond_0

    .line 417
    iget-wide v3, p1, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->h:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 425
    return-void
.end method

.method static synthetic c(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 432
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 433
    const v0, 0x7f0b0259

    invoke-static {p0, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;I)V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    const v0, 0x7f080158

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 440
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 443
    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 444
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v3, v1, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->l:Ljava/lang/String;

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->showDialog(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    .line 78
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->a(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f030063

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->setContentView(I)V

    .line 82
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 85
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/ui/MailAutoCompleteTextView;

    .line 87
    new-instance v1, Lcom/facebook/katana/DropdownFriendsAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v3}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/facebook/katana/DropdownFriendsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/ProfileImagesCache;)V

    iput-object v1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->g:Lcom/facebook/katana/DropdownFriendsAdapter;

    .line 89
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->g:Lcom/facebook/katana/DropdownFriendsAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/MailAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    new-instance v1, Lcom/facebook/katana/activity/messages/MessageComposeActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity$1;-><init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;Lcom/facebook/katana/ui/MailAutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/MailAutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    new-instance v1, Lcom/facebook/katana/activity/messages/MessageComposeActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity$2;-><init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/katana/ui/MailAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 140
    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/messages/MessageComposeActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity$3;-><init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f08015b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/activity/messages/MessageComposeActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity$4;-><init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    new-instance v0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$5;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity$5;-><init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)V

    .line 175
    const v1, 0x7f080155

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    new-instance v0, Lcom/facebook/katana/activity/messages/MessageComposeActivity$6;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity$6;-><init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->i:Landroid/view/View$OnClickListener;

    .line 187
    const v0, 0x7f080157

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->h:Landroid/view/ViewGroup;

    .line 191
    invoke-virtual {p0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 193
    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 195
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_0

    .line 200
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->f:Ljava/util/List;

    .line 201
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->f:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->g:Lcom/facebook/katana/DropdownFriendsAdapter;

    iget-object v1, v1, Lcom/facebook/katana/DropdownFriendsAdapter;->a:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->f:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/activity/messages/MessageComposeActivity$ComposeAppSessionListener;-><init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {p0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_user_id"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_2

    .line 211
    invoke-direct {p0, v1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    .line 216
    :goto_1
    const v0, 0x7f080158

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 218
    :cond_1
    return-void

    .line 213
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/service/method/FqlGetProfile;->a(Landroid/content/Context;J)Ljava/lang/String;

    goto :goto_1
.end method

.method public final i_()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 261
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 262
    if-nez p2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 268
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 270
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 271
    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->b(Lcom/facebook/katana/model/FacebookProfile;)V

    goto :goto_1

    .line 273
    :cond_2
    const-string v0, "profiles"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "profiles"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 276
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 277
    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_0

    aget-wide v3, v1, v0

    .line 278
    invoke-static {p0, v3, v4}, Lcom/facebook/katana/provider/ConnectionsProvider;->a(Landroid/content/Context;J)Lcom/facebook/katana/model/FacebookProfile;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->a(Lcom/facebook/katana/model/FacebookProfile;)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 265
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 291
    const v0, 0x7f080156

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 292
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 293
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->showDialog(I)V

    .line 308
    :goto_0
    return-void

    .line 295
    :cond_0
    const v0, 0x7f080158

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 296
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 297
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->showDialog(I)V

    goto :goto_0

    .line 299
    :cond_1
    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 301
    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->showDialog(I)V

    goto :goto_0

    .line 303
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->setResult(I)V

    .line 304
    invoke-virtual {p0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 313
    packed-switch p1, :pswitch_data_0

    .line 340
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 315
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 317
    const v1, 0x7f0b024e

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v0, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 319
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 324
    :pswitch_1
    const v0, 0x7f0b025b

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    const v0, 0x7f0b025a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0b03d7

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/facebook/katana/activity/messages/MessageComposeActivity$7;

    invoke-direct {v5, p0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity$7;-><init>(Lcom/facebook/katana/activity/messages/MessageComposeActivity;)V

    const v0, 0x7f0b0264

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v8, v7

    invoke-static/range {v0 .. v9}, Lcom/facebook/katana/AlertDialogs;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Z)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 242
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onPause()V

    .line 243
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->e:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 246
    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 223
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookActivity;->onResume()V

    .line 225
    invoke-static {p0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->e:Lcom/facebook/katana/binding/AppSession;

    .line 228
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->e:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0, v2}, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->removeDialog(I)V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->l:Ljava/lang/String;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 235
    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MessageComposeActivity;->e:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    goto :goto_0

    .line 237
    :cond_1
    return-void
.end method
