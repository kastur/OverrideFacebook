.class public Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;
.super Lcom/facebook/katana/activity/BaseFacebookListActivity;
.source "MailboxMessagesActivity.java"

# interfaces
.implements Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;


# instance fields
.field private e:I

.field private f:J

.field private g:Lcom/facebook/katana/binding/AppSession;

.field private h:Lcom/facebook/katana/binding/AppSessionListener;

.field private i:Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;

.field private j:Landroid/database/Cursor;

.field private k:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$QueryHandler;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Lcom/facebook/katana/util/logging/PerformanceMarker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->n:Z

    .line 564
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 414
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    .line 417
    invoke-virtual {p0, p1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 420
    invoke-direct {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->u()Z

    .line 423
    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 424
    const v0, 0x7f08013f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 427
    iget v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 428
    const v0, 0x7f080140

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 431
    :cond_0
    invoke-direct {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->k()V

    .line 432
    return-void

    :cond_1
    move v0, v2

    .line 423
    goto :goto_0

    :cond_2
    move v1, v2

    .line 424
    goto :goto_1
.end method

.method static synthetic a(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->i()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Z)V

    return-void
.end method

.method static synthetic a(ILjava/lang/Exception;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(ILjava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    return-object v0
.end method

.method private b(Z)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0800b0

    const v4, 0x7f0800af

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 508
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 510
    if-eqz p1, :cond_2

    .line 511
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 512
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 521
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 508
    goto :goto_0

    .line 514
    :cond_2
    invoke-virtual {p0, v4}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 515
    invoke-virtual {p0, v5}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-boolean v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->n:Z

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->i:Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->n:Z

    goto :goto_1
.end method

.method private static b(ILjava/lang/Exception;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 558
    const/16 v0, 0xc8

    if-ne v0, p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->k()V

    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->f:J

    return-wide v0
.end method

.method static synthetic e(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->e:I

    return v0
.end method

.method static synthetic f(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->h()V

    return-void
.end method

.method static synthetic g(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->q()V

    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->o:Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->o:Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/util/logging/PerformanceMarker;->b(Landroid/content/Context;)V

    .line 259
    return-void
.end method

.method static synthetic h(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->u()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->i:Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 266
    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 267
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-wide v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->f:J

    invoke-virtual {v1, p0, v2, v3, v0}, Lcom/facebook/katana/binding/AppSession;->e(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    .line 271
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->showDialog(I)V

    .line 273
    :cond_0
    return-void
.end method

.method private k()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 438
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->finish()V

    .line 492
    :goto_0
    return-void

    .line 445
    :cond_0
    const v0, 0x7f08013c

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 446
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    const-string v4, "subject"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    const-string v4, "unread_count"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 452
    if-lez v8, :cond_2

    .line 453
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 459
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    const-string v2, "participants"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 463
    const v0, 0x7f0b0236

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 467
    :goto_2
    const v0, 0x7f08013d

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->e:I

    invoke-static {v0}, Lcom/facebook/katana/provider/MailboxProvider;->d(I)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->f:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter$MessageQuery;->a:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->i:Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;

    invoke-virtual {v1, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 478
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->e:I

    iget-wide v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->a(IJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->i:Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 480
    new-instance v0, Lcom/facebook/katana/util/logging/PerformanceMarker;

    const-string v1, "mailboxGetThreadMessages"

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/util/logging/PerformanceMarker;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->o:Lcom/facebook/katana/util/logging/PerformanceMarker;

    .line 481
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->o:Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a(Landroid/content/Context;)V

    .line 482
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->e:I

    iget-wide v3, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->f:J

    if-lez v8, :cond_4

    move v5, v6

    :goto_3
    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;IJZ)Ljava/lang/String;

    .line 484
    invoke-virtual {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->p()V

    .line 490
    :cond_1
    invoke-direct {p0, v6}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Z)V

    goto/16 :goto_0

    .line 455
    :cond_2
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    .line 465
    :cond_3
    const v1, 0x7f0b0237

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_4
    move v5, v7

    .line 482
    goto :goto_3

    .line 487
    :cond_5
    invoke-direct {p0, v7}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Z)V

    goto/16 :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 498
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0247

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 499
    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0241

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 500
    return-void
.end method

.method private u()Z
    .locals 6

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 530
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    const-string v2, "tid"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 534
    :cond_0
    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 535
    const/4 v0, 0x1

    .line 540
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 541
    const-string v1, "moveToCurrentThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Thread id not found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->f:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :cond_2
    return v0

    .line 538
    :cond_3
    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->a(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f03005a

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->setContentView(I)V

    .line 131
    if-eqz p1, :cond_0

    .line 132
    const-string v0, "scrolledToBottom"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->n:Z

    .line 137
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 140
    invoke-virtual {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_folder"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->e:I

    .line 143
    invoke-virtual {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->f:J

    .line 147
    new-instance v0, Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->h()Lcom/facebook/katana/binding/ProfileImagesCache;

    move-result-object v2

    new-instance v3, Lcom/facebook/katana/activity/messages/BaseUserSelectionListener;

    invoke-direct {v3, p0}, Lcom/facebook/katana/activity/messages/BaseUserSelectionListener;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/ProfileImagesCache;Lcom/facebook/katana/activity/messages/UserSelectionListener;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->i:Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;

    .line 150
    invoke-virtual {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->i:Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 154
    new-instance v1, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$1;-><init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 165
    new-instance v1, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$2;-><init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 174
    const v0, 0x7f08013e

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$3;-><init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 195
    const v0, 0x7f08013f

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$4;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$4;-><init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    const v0, 0x7f080140

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const v0, 0x7f0800f2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 220
    new-instance v1, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$5;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$5;-><init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v0, 0x7f080143

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 235
    new-instance v1, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$6;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$6;-><init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$QueryHandler;-><init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->k:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$QueryHandler;

    .line 247
    new-instance v0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;

    invoke-direct {v0, p0, v4}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;-><init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;B)V

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    .line 250
    invoke-direct {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->l()V

    .line 253
    invoke-virtual {p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->s()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 254
    return-void
.end method

.method public final a(Lcom/facebook/katana/ui/CustomMenuItem;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 723
    invoke-virtual {p1}, Lcom/facebook/katana/ui/CustomMenuItem;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 743
    :goto_0
    return-void

    .line 725
    :pswitch_0
    new-array v0, v4, [J

    .line 726
    iget-wide v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->f:J

    aput-wide v1, v0, v3

    .line 727
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->e:I

    invoke-virtual {v1, p0, v2, v0, v4}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;I[JZ)Ljava/lang/String;

    goto :goto_0

    .line 732
    :pswitch_1
    new-array v0, v4, [J

    .line 733
    iget-wide v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->f:J

    aput-wide v1, v0, v3

    .line 734
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->e:I

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;I[JZ)Ljava/lang/String;

    goto :goto_0

    .line 739
    :pswitch_2
    new-array v0, v4, [J

    .line 740
    iget-wide v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->f:J

    aput-wide v1, v0, v3

    .line 741
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->e:I

    invoke-virtual {v1, p0, v0, v2}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;[JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->m:Ljava/lang/String;

    .line 742
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->showDialog(I)V

    goto :goto_0

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 699
    invoke-virtual {p0, p0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(Lcom/facebook/katana/ui/CustomMenu$CustomMenuActivity;)V

    .line 700
    const/4 v0, 0x1

    const v1, 0x7f0b0243

    const v2, 0x7f020138

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(III)V

    .line 702
    const/4 v0, 0x2

    const v1, 0x7f0b0244

    const v2, 0x7f020139

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(III)V

    .line 704
    const/4 v0, 0x3

    const v1, 0x7f0b023a

    const v2, 0x7f020224

    invoke-virtual {p0, v0, v1, v2}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(III)V

    .line 706
    return-void
.end method

.method public final g()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 711
    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 713
    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->j:Landroid/database/Cursor;

    const-string v4, "unread_count"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    .line 715
    :goto_0
    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(IZ)V

    .line 716
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(IZ)V

    .line 718
    :cond_1
    return-void

    :cond_2
    move v2, v0

    .line 713
    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 549
    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 550
    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 363
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 369
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 367
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 318
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->i:Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 324
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 325
    const-string v3, "body"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    const-string v3, "^(https?://)?([a-zA-Z0-9_-]+\\.[a-zA-Z0-9_-]+)+(/*[A-Za-z0-9/\\-_&:?\\+=//.%]*)*"

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v0, v3, v4, v1, v5}, Lcom/facebook/katana/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V

    .line 330
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    packed-switch v1, :pswitch_data_0

    .line 344
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 333
    :pswitch_0
    const/16 v4, 0xa

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 338
    :pswitch_1
    const/16 v4, 0xb

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 343
    :pswitch_2
    const/16 v4, 0xc

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 320
    :catch_0
    move-exception v0

    .line 353
    :cond_0
    return-void

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 382
    packed-switch p1, :pswitch_data_0

    .line 402
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 384
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 385
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 386
    const v1, 0x7f0b024e

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 388
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 393
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 394
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 395
    const v1, 0x7f0b023c

    invoke-virtual {p0, v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 397
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onPause()V

    .line 300
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g:Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 304
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    invoke-super {p0}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onResume()V

    .line 280
    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g:Lcom/facebook/katana/binding/AppSession;

    .line 283
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->removeDialog(I)V

    .line 285
    iput-object v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->m:Ljava/lang/String;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g:Lcom/facebook/katana/binding/AppSession;

    iget-object v3, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->h:Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual {v0, v3}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 292
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->k:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$QueryHandler;

    iget v3, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->e:I

    invoke-static {v3}, Lcom/facebook/katana/provider/MailboxProvider;->a(I)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$ThreadsQuery;->a:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/facebook/katana/activity/BaseFacebookListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 309
    const-string v0, "scrolledToBottom"

    iget-boolean v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 310
    return-void
.end method
