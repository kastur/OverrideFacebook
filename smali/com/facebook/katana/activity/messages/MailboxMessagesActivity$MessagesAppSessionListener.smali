.class Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "MailboxMessagesActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;-><init>(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/Exception;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 569
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->d(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)J

    move-result-wide v0

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->e(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)I

    move-result v0

    if-ne p4, v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->f(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V

    .line 571
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->g(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V

    .line 572
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;Z)V

    .line 573
    invoke-static {p1, p3}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(ILjava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const v2, 0x7f0b0260

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 581
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Exception;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 587
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->d(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->dismissDialog(I)V

    .line 589
    invoke-static {p1, p3}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const v1, 0x7f080141

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const v2, 0x7f0b025d

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 600
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Exception;[JZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 612
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->h(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Z

    .line 614
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->d(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)J

    move-result-wide v0

    const/4 v2, 0x0

    aget-wide v2, p4, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 616
    invoke-static {p1, p3}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const v1, 0x7f08013c

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 620
    if-eqz p5, :cond_1

    .line 621
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 626
    :cond_2
    if-eqz p5, :cond_3

    .line 628
    const v0, 0x7f0b0245

    .line 632
    :goto_1
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 636
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 630
    :cond_3
    const v0, 0x7f0b0246

    goto :goto_1
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 684
    invoke-static {p2, p3}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->i(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 687
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->i(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/messages/MailboxMessagesAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 693
    return-void
.end method

.method public final e(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 647
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->removeDialog(I)V

    .line 648
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 649
    invoke-static {p1, p3}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(ILjava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 652
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 654
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "tid"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->a(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;J)J

    .line 661
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->b(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 662
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->h(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)Z

    .line 665
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->c(Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;)V

    .line 677
    :cond_1
    :goto_0
    return-void

    .line 667
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->finish()V

    goto :goto_0

    .line 671
    :cond_3
    iget-object v0, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    const v2, 0x7f0b023b

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 675
    iget-object v1, p0, Lcom/facebook/katana/activity/messages/MailboxMessagesActivity$MessagesAppSessionListener;->a:Lcom/facebook/katana/activity/messages/MailboxMessagesActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
