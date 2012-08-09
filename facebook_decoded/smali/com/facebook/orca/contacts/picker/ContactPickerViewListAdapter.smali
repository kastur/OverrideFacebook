.class public Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactPickerViewListAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/facebook/orca/common/ui/widgets/CustomFilterable;
.implements Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;


# static fields
.field public static final a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<+",
            "Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

.field private f:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter$1;

    invoke-direct {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Landroid/view/LayoutInflater;Lcom/facebook/orca/common/util/PhoneNumberFormatter;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider",
            "<+",
            "Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;",
            ">;",
            "Landroid/view/LayoutInflater;",
            "Lcom/facebook/orca/common/util/PhoneNumberFormatter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    .line 45
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    .line 55
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->c:Ljavax/inject/Provider;

    .line 57
    iput-object p3, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->d:Landroid/view/LayoutInflater;

    .line 58
    iput-object p4, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->e:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    .line 59
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 215
    .line 216
    if-nez p1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_contact_picker_new_group:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 219
    :cond_0
    return-object p1
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 178
    .line 179
    if-nez p2, :cond_0

    .line 180
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_contact_picker_additional_list_item:I

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 182
    :cond_0
    sget v0, Lcom/facebook/orca/R$id;->additional_text_field:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 183
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 186
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->b()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->EMAIL:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    if-ne v1, v2, :cond_1

    .line 187
    sget v1, Lcom/facebook/orca/R$string;->add_person_by_email_auto_complete_text:I

    .line 188
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->a()Ljava/lang/String;

    move-result-object v2

    .line 194
    :goto_0
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<b>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "</b>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-object p2

    .line 190
    :cond_1
    sget v1, Lcom/facebook/orca/R$string;->add_person_by_phone_auto_complete_text:I

    .line 191
    iget-object v2, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->e:Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/orca/common/util/PhoneNumberFormatter;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    .line 205
    if-nez p2, :cond_0

    .line 206
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_contact_picker_section_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 208
    :cond_0
    sget v0, Lcom/facebook/orca/R$id;->contact_picker_section_header_text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 210
    invoke-virtual {p1}, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-object p2
.end method

.method private a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    check-cast p2, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;

    .line 167
    if-nez p2, :cond_0

    .line 168
    new-instance p2, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;

    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;-><init>(Landroid/content/Context;)V

    .line 170
    :cond_0
    invoke-virtual {p2, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->setContactRow(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;)V

    .line 171
    return-object p2
.end method

.method private b(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    .line 91
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetChanged()V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a()Lcom/facebook/orca/common/ui/widgets/CustomFilter;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->c()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    move-result-object v0

    return-object v0
.end method

.method final a(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/contacts/picker/ContactPickerRow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    .line 65
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2}, Lcom/facebook/orca/contacts/picker/ContactPickerFilterResult;->c()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b(Lcom/google/common/collect/ImmutableList;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->b()V

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->f:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetChanged()V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public final c()Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    .line 242
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    invoke-interface {v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerListFilterReceiver;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->h:Lcom/facebook/orca/contacts/picker/ContactPickerListFilter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 225
    new-instance v0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter$2;-><init>(Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 131
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 106
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v1, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    .line 108
    :cond_0
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    if-eqz v1, :cond_1

    .line 109
    const/4 v0, 0x2

    goto :goto_0

    .line 110
    :cond_1
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    if-eqz v1, :cond_2

    .line 111
    const/4 v0, 0x3

    goto :goto_0

    .line 112
    :cond_2
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne v0, v1, :cond_3

    .line 113
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown object type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->g:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    .line 152
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    if-eqz v1, :cond_0

    .line 153
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 154
    :cond_0
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    if-eqz v1, :cond_1

    .line 155
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerAddPhoneOrEmailRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    instance-of v1, v0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    if-eqz v1, :cond_2

    .line 157
    check-cast v0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_2
    sget-object v1, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a:Lcom/facebook/orca/contacts/picker/ContactPickerRow;

    if-ne v0, v1, :cond_3

    .line 159
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown object type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/facebook/orca/contacts/picker/ContactPickerViewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 143
    instance-of v0, v0, Lcom/facebook/orca/contacts/picker/ContactPickerSectionHeaderRow;

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
