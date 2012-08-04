.class public Lcom/facebook/orca/contacts/picker/ContactPickerFragment;
.super Lcom/facebook/orca/activity/OrcaFragment;
.source "ContactPickerFragment.java"


# static fields
.field private static final J:Ljava/util/regex/Pattern;


# instance fields
.field private K:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

.field private L:Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

.field private M:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

.field private N:Landroid/graphics/drawable/Drawable;

.field private O:Landroid/graphics/drawable/Drawable;

.field private P:Landroid/view/View;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/AutoCompleteTextView;

.field private S:Landroid/widget/TextView;

.field private T:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/PickedUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "\\s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->J:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaFragment;-><init>()V

    .line 53
    return-void
.end method

.method private E()V
    .locals 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->K:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 296
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->R:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;

    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->K:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-direct {v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerHackListAdapter;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 297
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->R:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->R:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->K:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->c()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 299
    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;)V
    .locals 3
    .parameter

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->b()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v0

    .line 205
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->e(I)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;)V
    .locals 3
    .parameter

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/facebook/orca/users/PickedUser;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-direct {p0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b(Lcom/facebook/orca/users/PickedUser;)V

    .line 201
    return-void
.end method

.method private a(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 212
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;-><init>(Landroid/content/Context;Lcom/facebook/orca/users/UserIdentifier$IdentifierType;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$3;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;Lcom/facebook/orca/users/UserIdentifier$IdentifierType;)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->a(Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog$Listener;)V

    .line 227
    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerAddContactDialog;->show()V

    .line 228
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-static {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b(Ljava/lang/String;)Lcom/facebook/orca/users/Name;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/facebook/orca/users/UserEmailAddress;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/facebook/orca/users/UserEmailAddress;-><init>(Ljava/lang/String;I)V

    .line 233
    new-instance v2, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v3, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 238
    new-instance v2, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 239
    new-instance v0, Lcom/facebook/orca/users/PickedUser;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b(Lcom/facebook/orca/users/PickedUser;)V

    .line 240
    return-void
.end method

.method private static b(Ljava/lang/String;)Lcom/facebook/orca/users/Name;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 286
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->J:Ljava/util/regex/Pattern;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    .line 287
    array-length v0, v1

    if-ne v0, v3, :cond_0

    .line 288
    new-instance v0, Lcom/facebook/orca/users/Name;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p0}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/orca/users/Name;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1, p0}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/facebook/orca/users/PickedUser;)V
    .locals 4
    .parameter

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->c(Lcom/facebook/orca/users/PickedUser;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->R:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 257
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->L:Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

    invoke-static {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;->a(Ljava/lang/CharSequence;)Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_0

    .line 259
    iget v3, v2, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;->a:I

    iget v2, v2, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil$Range;->b:I

    invoke-interface {v1, v3, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 261
    :cond_0
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 262
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->c()V

    .line 263
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 243
    invoke-static {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b(Ljava/lang/String;)Lcom/facebook/orca/users/Name;

    move-result-object v0

    .line 244
    new-instance v1, Lcom/facebook/orca/users/UserPhoneNumber;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p2, v2}, Lcom/facebook/orca/users/UserPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    new-instance v2, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v3, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 250
    new-instance v2, Lcom/facebook/orca/users/UserWithIdentifier;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V

    .line 251
    new-instance v0, Lcom/facebook/orca/users/PickedUser;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/facebook/orca/users/PickedUser;-><init>(Lcom/facebook/orca/users/UserWithIdentifier;Lcom/facebook/orca/users/UserIdentifier;)V

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b(Lcom/facebook/orca/users/PickedUser;)V

    .line 252
    return-void
.end method

.method private c(Lcom/facebook/orca/users/PickedUser;)Ljava/lang/CharSequence;
    .locals 7
    .parameter

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/facebook/orca/users/PickedUser;->a()Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->f()Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 274
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 275
    new-instance v3, Lcom/facebook/orca/contacts/picker/PickedUserSpan;

    iget-object v4, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->M:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

    iget-object v5, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->N:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->O:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/facebook/orca/contacts/picker/PickedUserSpan;-><init>(Lcom/facebook/orca/users/PickedUser;Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 277
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 278
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 279
    const/16 v4, 0x21

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 280
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 281
    return-object v1
.end method

.method private e(I)V
    .locals 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->K:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 184
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v1, :cond_1

    .line 185
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    .line 186
    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    if-eqz v1, :cond_0

    .line 188
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    .line 189
    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 97
    sget v0, Lcom/facebook/orca/R$layout;->orca_contact_picker:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->P:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->P:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$id;->contact_picker_heading:I

    invoke-static {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Q:Landroid/widget/TextView;

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->P:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$id;->contact_picker_autocomplete_input:I

    invoke-static {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->R:Landroid/widget/AutoCompleteTextView;

    .line 100
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->P:Landroid/view/View;

    sget v1, Lcom/facebook/orca/R$id;->contact_picker_warning:I

    invoke-static {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->S:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->P:Landroid/view/View;

    return-object v0
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 310
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 311
    if-ne p2, v1, :cond_0

    .line 312
    const-string v0, "addNewPhone"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    const-string v0, "cluster"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserCluster;

    .line 314
    sget-object v1, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserCluster;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a(Lcom/facebook/orca/users/UserIdentifier$IdentifierType;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const-string v0, "pickedUser"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    .line 320
    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b(Lcom/facebook/orca/users/PickedUser;)V

    goto :goto_0

    .line 323
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 324
    if-ne p2, v1, :cond_0

    .line 325
    const-string v0, "picked_user"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PickedUser;

    .line 326
    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b(Lcom/facebook/orca/users/PickedUser;)V

    goto :goto_0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->a(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->a()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 81
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    const-class v2, Lcom/facebook/orca/annotations/ForFacebookList;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->K:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    .line 83
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerPickingLogic;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 84
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 85
    const-class v0, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->L:Lcom/facebook/orca/contacts/picker/ContactPickerEditableUtil;

    .line 86
    new-instance v0, Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->M:Lcom/facebook/orca/contacts/picker/PickedUserSpanConstants;

    .line 87
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    sget v1, Lcom/facebook/orca/R$drawable;->token_field:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->N:Landroid/graphics/drawable/Drawable;

    .line 89
    sget v1, Lcom/facebook/orca/R$drawable;->token_field:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->O:Landroid/graphics/drawable/Drawable;

    .line 90
    return-void
.end method

.method public final a(Lcom/facebook/orca/compose/ComposeMode;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    sget-object v0, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    if-ne p1, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->R:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 159
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/orca/contacts/picker/ContactPickerFragment$Mode;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    sget-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$Mode;->CREATE_THREAD:Lcom/facebook/orca/contacts/picker/ContactPickerFragment$Mode;

    if-ne p1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Q:Landroid/widget/TextView;

    sget v1, Lcom/facebook/orca/R$string;->contact_picker_to_heading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->S:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->Q:Landroid/widget/TextView;

    sget v1, Lcom/facebook/orca/R$string;->contact_picker_add_heading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->S:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/users/PickedUser;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b(Lcom/facebook/orca/users/PickedUser;)V

    .line 139
    return-void
.end method

.method public final a(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/PickedUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->T:Lcom/google/common/collect/ImmutableList;

    .line 143
    return-void
.end method

.method public final b()Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/PickedUser;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->R:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Lcom/facebook/orca/contacts/picker/PickedUserSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/contacts/picker/PickedUserSpan;

    .line 164
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 165
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 166
    invoke-virtual {v4}, Lcom/facebook/orca/contacts/picker/PickedUserSpan;->a()Lcom/facebook/orca/users/PickedUser;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method final c()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->T:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->T:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 175
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->T:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 176
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->K:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->c()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/google/common/collect/ImmutableList;)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->K:Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->c()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaFragment;->c(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->R:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$1;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->R:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment$2;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    return-void
.end method

.method public final u()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/facebook/orca/activity/OrcaFragment;->u()V

    .line 134
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerFragment;->E()V

    .line 135
    return-void
.end method
