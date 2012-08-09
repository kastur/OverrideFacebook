.class public Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "TaggingAutoCompleteTextView.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:I

.field private c:Landroid/app/Activity;

.field private d:Lcom/facebook/katana/DropdownFriendsAdapter;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;

    invoke-static {v0}, Lcom/facebook/katana/util/Utils;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->e:Ljava/util/Map;

    .line 284
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->getInputType()I

    move-result v0

    const v1, -0x10001

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->setInputType(I)V

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->b:I

    .line 287
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/text/Editable;
    .locals 11
    .parameter

    .prologue
    const/16 v10, 0x21

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 510
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 511
    const-string v0, "@\\[(\\d+):((\\w|\\s)+)\\]"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 513
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    move v0, v5

    .line 516
    :goto_0
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 520
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 521
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 522
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 524
    new-instance v0, Lcom/facebook/katana/model/FacebookProfile;

    const-string v4, ""

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 527
    new-instance v1, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$TaggedUser;

    invoke-direct {v1, v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$TaggedUser;-><init>(Lcom/facebook/katana/model/FacebookProfile;)V

    invoke-virtual {v6, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 528
    new-instance v1, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;

    invoke-direct {v1, v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;-><init>(Lcom/facebook/katana/model/FacebookProfile;)V

    .line 530
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v6, v1, v8, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 531
    invoke-virtual {v1, v6, v8}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->a(Landroid/text/Editable;I)V

    .line 533
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {v6, v0, v8, v1, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 536
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 539
    return-object v6
.end method

.method public static a(Landroid/text/Editable;)Ljava/lang/String;
    .locals 12
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 488
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 491
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v1, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;

    invoke-virtual {v3, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;

    .line 492
    array-length v4, v0

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 493
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 494
    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 497
    const-string v8, "@[%d:%s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->b()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v10, 0x1

    invoke-virtual {v5}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 499
    invoke-virtual {v3, v6, v7, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    :cond_0
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/facebook/katana/binding/ProfileImagesCache;)Lcom/facebook/katana/binding/AppSessionListener;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->c:Landroid/app/Activity;

    .line 293
    new-instance v0, Lcom/facebook/katana/DropdownFriendsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/facebook/katana/DropdownFriendsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/facebook/katana/binding/ProfileImagesCache;)V

    iput-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->d:Lcom/facebook/katana/DropdownFriendsAdapter;

    .line 295
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->d:Lcom/facebook/katana/DropdownFriendsAdapter;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    new-instance v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$Watcher;

    invoke-direct {v0, p0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$Watcher;-><init>(Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 298
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->d:Lcom/facebook/katana/DropdownFriendsAdapter;

    iget-object v0, v0, Lcom/facebook/katana/DropdownFriendsAdapter;->a:Lcom/facebook/katana/binding/AppSessionListener;

    return-object v0
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 6
    .parameter

    .prologue
    .line 344
    check-cast p1, Landroid/database/Cursor;

    .line 345
    const-string v0, "user_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 347
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 349
    const-string v0, "user_image_url"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 351
    new-instance v0, Lcom/facebook/katana/model/FacebookProfile;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/model/FacebookProfile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 360
    iget-object v1, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->e:Ljava/util/Map;

    iget-object v2, v0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v1, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$TaggedUser;

    invoke-direct {v1, v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$TaggedUser;-><init>(Lcom/facebook/katana/model/FacebookProfile;)V

    return-object v1
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->getSelectionStart()I

    move-result v2

    .line 308
    const/4 v0, 0x0

    .line 310
    iget v1, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->b:I

    const/16 v3, 0xa

    if-lt v1, v3, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v2, v1, :cond_0

    .line 320
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 321
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x40

    if-ne v3, v4, :cond_3

    .line 322
    const/4 v0, 0x1

    .line 327
    :cond_2
    if-nez v0, :cond_4

    .line 328
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 320
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 332
    :cond_4
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 333
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 334
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 338
    :cond_5
    invoke-super {p0, v0, p2}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x21

    const/4 v2, 0x1

    .line 368
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v4

    .line 370
    if-nez v4, :cond_0

    .line 371
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not editable text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    instance-of v0, p1, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$TaggedUser;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 378
    check-cast v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$TaggedUser;

    iget-object v0, v0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$TaggedUser;->a:Lcom/facebook/katana/model/FacebookProfile;

    .line 386
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->getSelectionStart()I

    move-result v5

    .line 388
    const/4 v1, 0x0

    .line 390
    add-int/lit8 v3, v5, -0x1

    :goto_1
    if-ltz v3, :cond_1

    .line 391
    invoke-interface {v4, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0x40

    if-ne v6, v7, :cond_3

    move v1, v2

    .line 397
    :cond_1
    if-nez v1, :cond_4

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempted to complete name without \"@\" marker"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    goto :goto_0

    .line 390
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 403
    :cond_4
    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v1

    .line 404
    sub-int v6, v5, v3

    sub-int/2addr v1, v6

    .line 405
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v1, v6

    .line 407
    iget-object v6, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->c:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-le v1, v6, :cond_5

    .line 429
    :goto_2
    return-void

    .line 416
    :cond_5
    invoke-interface {v4, v3, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 417
    invoke-interface {v4, v3, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 420
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-interface {v4, v1, v3, v2, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 422
    new-instance v1, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;

    invoke-direct {v1, v0}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;-><init>(Lcom/facebook/katana/model/FacebookProfile;)V

    .line 423
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-interface {v4, v1, v3, v0, v8}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 425
    invoke-virtual {v1, v4, v3}, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView$ProfileSpan;->a(Landroid/text/Editable;I)V

    .line 426
    iget v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->b:I

    .line 428
    iget-object v0, p0, Lcom/facebook/katana/ui/TaggingAutoCompleteTextView;->d:Lcom/facebook/katana/DropdownFriendsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/DropdownFriendsAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_2
.end method
